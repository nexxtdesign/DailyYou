<?php

namespace Shopware\Themes\DailyYou;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
     /**
     * Javascript files which will be used in the theme.
     *
     * @var array
     */
    protected $javascript = [
  
        'src/aos/aos.js',
        'src/js/custom.js',
        

    ];
 
    protected $css = array(
    'src/aos/aos.css'
);
    
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
DY Theme
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
WILDES MÄDCHEN
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}