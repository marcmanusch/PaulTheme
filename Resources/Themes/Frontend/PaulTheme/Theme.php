<?php

namespace Shopware\Themes\PaulTheme;

use Doctrine\Common\Collections\ArrayCollection;
use Shopware\Components\Form as Form;
use Shopware\Components\Theme\ConfigSet;

class Theme extends \Shopware\Components\Theme
{
    /** @var string Defines the parent theme */
    protected $extend = 'Responsive';

    /** @var string Defines the human readable name */
    protected $name = 'Paul Theme';

    /** @var string Description of the theme */
    protected $description = 'Dieses Theme ist ganz toll.';

    /** @var string The author of the theme */
    protected $author = 'Marc Manusch';

    /** @var string License of the theme */
    protected $license = 'MIT';

    /**
     * @var bool
     */
    protected $injectBeforePlugins = false;

    /** @var array Holds default fieldSet configuration. */
    private $fieldSetDefaults = [
        'layout' => 'column',
        'height' => 170,
        'flex' => 0,
        'defaults' => ['columnWidth' => 0.5, 'labelWidth' => 180, 'margin' => '3 16 3 0'],
    ];

    /** @var array Holds default $attributes configuration. */
    private $attributes = [
        'layout' => 'column',
        'flex' => 0,
    ];

    public function createConfigSets(ArrayCollection $collection)
    {
        $set = new ConfigSet();
        $set->setName('Paul Theme');
        $set->setDescription('Set all colors to "Paul-Style"');
        $set->setValues(array(
            'brand-primary' => '#337ab7',
            'highlight-info' => '#009cde',
            'body-bg'       => '#fafafa',
            'desktopLogo'   => 'frontend/_public/src/img/logos/logo.png',
            'tabletLandscapeLogo'   => 'frontend/_public/src/img/logos/logo.png',
            'tabletLogo'   => 'frontend/_public/src/img/logos/logo.png',
            'mobileLogo'   => 'frontend/_public/src/img/logos/logo.png'
        ));

        $collection->add($set);
    }

    /**
     * @param Form\Container\TabContainer $container
     */
    public function createConfig(Form\Container\TabContainer $container)
    {
        # Register Tabs
        $container->addTab($this->createGeneralTab());
        $container->addTab($this->createLogoTab());
        $container->addTab($this->createFooterTab());
        $container->addTab($this->createExtrasTab());
    }

    public function createGeneralTab() {

        $fieldset = $this->createFieldSet(
            'main_config',
            'Haupt-Konfiguration',
            array(
                'attributes' => $this->attributes,
                'defaults' => $this->fieldSetDefaults
            )
        );

        $config_page_width = $this->createPixelField(
            'config_page_width',
            'Maximale Seitenbreite (px)',
            '1680px'
        );

        $fieldset->addElement($config_page_width);

        // create tab
        $tab = $this->createTab(
            'main_tab',
            'Haupt'
        );

        // tab
        $tab->addElement($fieldset);

        return $tab;
    }

    public function createLogoTab() {

        $fieldset = $this->createFieldSet(
            'logo_config',
            'Logo-Konfiguration',
            array(
                'attributes' => $this->attributes,
                'defaults' => $this->fieldSetDefaults
            )
        );

        // create tab
        $tab = $this->createTab(
            'logo_tab',
            'Logo'
        );

        // tab
        $tab->addElement($fieldset);

        return $tab;
    }

    public function createFooterTab() {

        $fieldset = $this->createFieldSet(
            'fieldset_payment',
            'Zahlungsarten-Konfiguration',
            array(
                'attributes' => $this->attributes,
                'defaults' => $this->fieldSetDefaults
            )
        );

        $checkbox = $this->createCheckboxField(
            'payment_logo_paypal',
            'Paypal',
            false
        );

        $checkbox2 = $this->createCheckboxField(
            'payment_logo_paypal_invoice',
            'Paypal Rechnung',
            false
        );

        $checkbox3 = $this->createCheckboxField(
            'payment_logo_mastercard',
            'Mastercard',
            false
        );

        $checkbox4 = $this->createCheckboxField(
            'payment_logo_lastschrift',
            'Lastschrift',
            false
        );


        $checkbox5 = $this->createCheckboxField(
            'payment_logo_visa',
            'Visa',
            false
        );


        $checkbox6 = $this->createCheckboxField(
            'payment_logo_vorkasse',
            'Vorkasse',
            false
        );

        $checkbox7 = $this->createCheckboxField(
            'payment_logo_american_express',
            'American Express',
            false
        );



        $fieldset->addElement($checkbox);
        $fieldset->addElement($checkbox2);
        $fieldset->addElement($checkbox3);
        $fieldset->addElement($checkbox4);
        $fieldset->addElement($checkbox5);
        $fieldset->addElement($checkbox6);
        $fieldset->addElement($checkbox7);

        $fieldset_shiping = $this->createFieldSet(
            'fieldset_shipping',
            'Versandanbieter-Konfiguration',
            array(
                'attributes' => $this->attributes,
                'defaults' => $this->fieldSetDefaults
            )
        );

        $checkbox_dhl = $this->createCheckboxField(
            'shipping_logo_dhl',
            'DHL',
            false
        );

        $fieldset_shiping->addElement($checkbox_dhl);

        // create tab
        $tab = $this->createTab(
            'footer_tab',
            'Footer'
        );

        // tab
        $tab->addElement($fieldset);
        $tab->addElement($fieldset_shiping);

        return $tab;
    }

    public function createExtrasTab() {

        $fieldsetBildSidebar = $this->createFieldSet(
            'Extra_config',
            'Extra-Konfiguration'
        );

        $fieldsetBildSidebar->addElement($this->createMediaField(
            'config_sidebar_image_1',
            'Bild in der Sidebar oben',
            'custom/plugins/PaulTheme/Resources/Themes/Frontend/PaulTheme/frontend/_public/src/img/logos/sidebar_top.jpg'
        ));

        $fieldsetBildSidebar->addElement($this->createTextField(
            'config_sidebar_link_1',
            'Link zu Bild 1',
            ''
        ));

        $fieldsetMessage = $this->createFieldSet(
            'Extra_Message',
            'Mitteilung im Shop'
        );

        $fieldsetMessage->addElement($this->createDateField(
            'show_message_date_from',
            'Datum von',
            ''
        ));

        $fieldsetMessage->addElement($this->createDateField(
            'show_message_date_till',
            'Datum bis',
            ''
        ));

        $fieldsetMessage->addElement($this->createTextAreaField(
            'show_message_date_message',
            'Mitteilung',
            '',
            ['attributes' => ['xtype' => 'textarea', 'lessCompatible' => false]]
        ));


        // create tab
        $tab = $this->createTab(
            'extra_tab',
            'Extra'
        );

        // tab
        $tab->addElement($fieldsetBildSidebar);
        $tab->addElement($fieldsetMessage);

        return $tab;
    }


}