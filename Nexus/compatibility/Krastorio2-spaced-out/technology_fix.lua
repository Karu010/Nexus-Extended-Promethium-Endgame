--technology.lua


data:extend({

----------------------------------------------------------------
----------------------------------------------------------------
-------NORMAL_TECHNOLOGY-------

{
	name = "element882",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/promethium-882.png",
	icon_size = 512,
	essential = true,
	prerequisites = {"planet-discovery-nexus"},
    research_trigger =
    {
      type = "craft-item",
      item = "ionit-ore"
    }
},
----------------------------------------------------------------
{
	name = "ionit-liquefaction",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/liquid-ionit-matter.png",
	icon_size = 512,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "liquid-ionit-matter"},
	  },
	prerequisites = {"element882"},
	unit =
    {
      count = 1000,
      ingredients =
      {
		{"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "atomacer",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/atomacer.png",
	icon_size = 512,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "atomacer"},
		{type = "unlock-recipe", recipe = "high-energetic-photonen-fluid-mk1"},
		{type = "unlock-recipe", recipe = "photon-enrichment-chamber"},
		{type = "unlock-recipe", recipe = "atomar-separator"},
		{type = "unlock-recipe", recipe = "element-882-separate"},
		{type = "unlock-recipe", recipe = "raw-matter-1"},
		{type = "unlock-recipe", recipe = "raw-matter-2"},
		{type = "unlock-recipe", recipe = "raw-matter-3"},
		{type = "unlock-recipe", recipe = "raw-matter-4"},
		{type = "unlock-recipe", recipe = "raw-matter-5"},
		{type = "unlock-recipe", recipe = "raw-matter-6"},
		{type = "unlock-recipe", recipe = "raw-matter-7"},
		{type = "unlock-recipe", recipe = "raw-matter-8"},
	  },
	prerequisites = {"element882"},
	unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "matter-stabilization",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/matter-stabilization.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "critical-photon-cube-stabilization"},
		{type = "unlock-recipe", recipe = "matter-stabilizer"},
		{type = "unlock-recipe", recipe = "critical-photon-cube-production-mk1"},
	  },
	prerequisites = {"atomacer"},
	research_trigger =
    {
      type = "craft-item",
      item = "critical-photon-cube"
    }
},
----------------------------------------------------------------
{
	name = "rare-metal-refining",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/rare-metal-refining.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "molten-gold"},
		{type = "unlock-recipe", recipe = "gold-plate"},
		{type = "unlock-recipe", recipe = "molten-platin"},
		{type = "unlock-recipe", recipe = "platin-plate"},
		{type = "unlock-recipe", recipe = "omega-alloy"},
		{type = "unlock-recipe", recipe = "atomar-assembler"},
	  },
	prerequisites = {"diamond-processing"},
	unit =
    {
      count = 1400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "nexus-sand-processing",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/nexus-sand-processing.png",
	icon_size = 968,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "advanced-crusher"},
		{type = "unlock-recipe", recipe = "silica-rich-sand"},
		{type = "unlock-recipe", recipe = "tempered-glass"},
	  },
	prerequisites = {"diamond-processing"},
	unit =
    {
      count = 1400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "promethium-882-research",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/promethium-882-science-pack.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "promethium-882-science-pack"},
		{type = "unlock-recipe", recipe = "omega-lab"},
		{type = "unlock-recipe", recipe = "omega-automation-science-pack"},
		{type = "unlock-recipe", recipe = "omega-logistic-science-pack"},
		{type = "unlock-recipe", recipe = "omega-military-science-pack"},
		{type = "unlock-recipe", recipe = "omega-chemical-science-pack"},
		{type = "unlock-recipe", recipe = "omega-production-science-pack"},
		{type = "unlock-recipe", recipe = "omega-utility-science-pack"},
		{type = "unlock-recipe", recipe = "omega-space-science-pack"},
		{type = "unlock-recipe", recipe = "omega-metallurgic-science-pack"},
		{type = "unlock-recipe", recipe = "omega-agricultural-science-pack"},
		{type = "unlock-recipe", recipe = "omega-electromagnetic-science-pack"},
		{type = "unlock-recipe", recipe = "omega-cryogenic-science-pack"},
		--{type = "unlock-recipe", recipe = "photonen-energy-fluid"},
	  },
	prerequisites = {"rare-metal-refining","nexus-sand-processing"},
	unit =
    {
      count = 2400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "diamond-processing",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/diamond-processing.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "liquid-coal-matter"},
		{type = "unlock-recipe", recipe = "graphit"},
		{type = "unlock-recipe", recipe = "diamond"},
	  },
	prerequisites = {"atomacer","ionit-liquefaction"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-components",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-components.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "roller-factory"},
		{type = "unlock-recipe", recipe = "advanced-coil"},
		{type = "unlock-recipe", recipe = "gold-wire"},
		{type = "unlock-recipe", recipe = "gold-foil"},
		{type = "unlock-recipe", recipe = "gold-foil-mesh"},
		{type = "unlock-recipe", recipe = "omega-beam"},
		{type = "unlock-recipe", recipe = "omega-gear"},
		{type = "unlock-recipe", recipe = "organic-mesh"},
		{type = "unlock-recipe", recipe = "platin-mesh"},
	  },
	prerequisites = {"promethium-882-research"},
	unit =
    {
      count = 1000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "singularity-crystal-assembling",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/singularity-crystal-assembling.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "singularity-assembler"},
		{type = "unlock-recipe", recipe = "singularity-crystals-stage-1"},
		{type = "unlock-recipe", recipe = "singularity-crystals-stage-2"},
		{type = "unlock-recipe", recipe = "singularity-crystals-stage-3"},
		{type = "unlock-recipe", recipe = "singularity-crystals-stage-4"},
		{type = "unlock-recipe", recipe = "singularity-crystals-stage-5"},
		{type = "unlock-recipe", recipe = "high-energy-crystal"},
		{type = "unlock-recipe", recipe = "photonen-energy-fluid-mk1"},
		{type = "unlock-recipe", recipe = "singularity-crystal-core-13-stabilization"},
		{type = "unlock-recipe", recipe = "singularity-crystal-core-65-stabilization"},
		{type = "unlock-recipe", recipe = "singularity-crystal-core-119-stabilization"},
		{type = "unlock-recipe", recipe = "singularity-crystal-core-313-stabilization"},
		{type = "unlock-recipe", recipe = "singularity-crystal-core-412-stabilization"},
	  },
	prerequisites = {"promethium-882-research"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "photon-electronics",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/photon-electronics.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "nano-factory"},
		{type = "unlock-recipe", recipe = "advanced-filter"},
		{type = "unlock-recipe", recipe = "advanced-microchip"},
		{type = "unlock-recipe", recipe = "advanced-photon-processor"},
		{type = "unlock-recipe", recipe = "electronic-memory"},
		{type = "unlock-recipe", recipe = "electronic-triode"},
		{type = "unlock-recipe", recipe = "omega-inductor"},
		{type = "unlock-recipe", recipe = "omega-transformer"},
		{type = "unlock-recipe", recipe = "photon-chip"},
		{type = "unlock-recipe", recipe = "photon-processor"},
		{type = "unlock-recipe", recipe = "photon-sensor"},
		{type = "unlock-recipe", recipe = "promethium-lens"},
		{type = "unlock-recipe", recipe = "thermal-plate"},
	  },
	prerequisites = {"promethium-882-research","omega-components", "singularity-crystal-assembling"},
	unit =
    {
      count = 1200,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "antimatter-science-pack",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/antimatter-science-pack.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
	    type = "unlock-recipe", recipe = "nano-fluid-factory"},
		{type = "unlock-recipe", recipe = "antimatter-science-pack"},
	  },
	prerequisites = {"photon-electronics"},
	unit =
    {
      count = 1400,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "antimatter-produktion",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/antimatter-produktion.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "matter-activator"},
		{type = "unlock-recipe", recipe = "empty-fuel-rod"},
		{type = "unlock-recipe", recipe = "critical-photon-fuel-rod"},
		{type = "unlock-recipe", recipe = "antimatter"},
		{type = "unlock-recipe", recipe = "antimatter-fuel-rod-fill"},
		{type = "unlock-recipe", recipe = "antimatter-fuel-rod-drain"},
		{type = "unlock-recipe", recipe = "exotic-matter"},
		{type = "unlock-recipe", recipe = "exotic-matter-fuel-rod-fill"},
		{type = "unlock-recipe", recipe = "exotic-matter-fuel-rod-drain"},
		{type = "unlock-recipe", recipe = "dark-matter-crystal"},
		{type = "unlock-recipe", recipe = "dark-matter-crystal-stabilization"},
	  },
	prerequisites = {"antimatter-science-pack"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------BETTER MASCHINE-------

{
	name = "photon-stream-thruster",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/photon-stream-thruster.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "photon-stream-thruster"},
		{type = "unlock-recipe", recipe = "omega-canister"},
		{type = "unlock-recipe", recipe = "high-energetic-photonen-fluid-canister-fill"},
		{type = "unlock-recipe", recipe = "high-energetic-photonen-fluid-canister-drain"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 200,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "warp-drive-engine",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/warp-drive-engine.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "warp-drive-engine"},
		{type = "unlock-space-location", space_location = "oort-cloud", use_icon_overlay_constant = true},
		{type = "unlock-space-location", space_location = "sol", use_icon_overlay_constant = true},
		{type = "unlock-space-location", space_location = "shattered-planet", use_icon_overlay_constant = true},
		{type = "unlock-space-location", space_location = "solar-system-edge", use_icon_overlay_constant = true},
	  },
	prerequisites = {"warp-drive-frame", "exotic-matter-containment-fields-generator", "gravity-fields-generator", "antimatter-containment-fields-generator", "singularity-core"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 2},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "fusion-power-mk2",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/fusion-power-mk2.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "fusion-reactor-mk2"},
		{type = "unlock-recipe", recipe = "fusion-generator-mk2"},
		{type = "unlock-recipe", recipe = "advanced-fusion-fuel"},
		{type = "unlock-recipe", recipe = "advanced-fluoroketone-cooling"},
	  },
	prerequisites = {"omega-components", "singularity-crystal-assembling", "promethium-882-research"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "photon-enrichment-chamber-mk2",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/photon-enrichment-chamber-mk2.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "photon-enrichment-chamber-mk2"},
		{type = "unlock-recipe", recipe = "high-energetic-photonen-fluid-mk2"},
		{type = "unlock-recipe", recipe = "photonen-energy-fluid-mk2"},
		{type = "unlock-recipe", recipe = "critical-photon-cube-production-mk2"},
	  },
	prerequisites = {"omega-components", "singularity-crystal-assembling", "promethium-882-research"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-substation",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-substation.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-substation"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 500,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-tank",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-tank.png",
	icon_size = 512,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-tank"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 600,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-accumulator",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-accumulator.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-accumulator"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 500,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-beacon",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-beacon.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-beacon"},
		{type = "unlock-recipe", recipe = "omega-effectivity-module"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-core",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/zero-point-energy-engine-core.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "zero-point-energy-engine-core"},
		{type = "unlock-recipe", recipe = "zero-point-energy-engine-injector-down"},
		{type = "unlock-recipe", recipe = "zero-point-energy-anti-proton"},
	  },
	prerequisites = {"omega-components", "omega-module-mk1"},
	unit =
    {
      count = 2800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-left",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/zero-point-energy-engine-injector-left.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "zero-point-energy-engine-injector-left"},
		{type = "unlock-recipe", recipe = "zero-point-energy-anti-neutron"},
	  },
	prerequisites = {"zero-point-energy-engine-core", "photon-electronics", "omega-module-mk2"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-up",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/zero-point-energy-engine-injector-up.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "zero-point-energy-engine-injector-up"},
		{type = "unlock-recipe", recipe = "zero-point-energy-anti-quarks"},
	  },
	prerequisites = {"zero-point-energy-engine-injector-left", "omega-module-mk3"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "zero-point-energy-engine-injector-right",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/zero-point-energy-engine-injector-right.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "zero-point-energy-engine-injector-right"},
		{type = "unlock-recipe", recipe = "zero-point-energy-anti-leptonen"},
	  },
	prerequisites = {"zero-point-energy-engine-injector-up", "omega-module-mk4"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------ZERO_POINT_ENERGY_ENGINE_CORE_LIMIT------

{
	name = "zpe-core-limit-1",
    type = "technology",
    icon = "__Nexus-Graphics__/graphics/tech/zpe-core-limit.png",
    icon_size = 128,
	prerequisites = {"zero-point-energy-engine-core"},
    unit =
    {
      count = 2400,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
    {
    name = "zpe-core-limit-2",
    type = "technology",
    icon = "__Nexus-Graphics__/graphics/tech/zpe-core-limit.png",
    icon_size = 128,
    prerequisites = {"zpe-core-limit-1", "omega-module-mk3"},
    unit =
    {
      count = 4800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
    {
    name = "zpe-core-limit-3",
    type = "technology",
    icon = "__Nexus-Graphics__/graphics/tech/zpe-core-limit.png",
    icon_size = 128,
    prerequisites = {"zpe-core-limit-2", "antimatter-science-pack"},
    unit =
    {
      count = 4800,
      ingredients =
      {
        {"omega-automation-science-pack", 2},
        {"omega-logistic-science-pack", 2},
        {"omega-military-science-pack", 2},
        {"omega-chemical-science-pack", 2},
        {"omega-production-science-pack", 2},
        {"omega-utility-science-pack", 2},
        {"omega-space-science-pack", 2},
		{"kr-matter-tech-card", 2},
	    {"kr-advanced-tech-card", 2},
	    {"kr-singularity-tech-card", 2},
        {"omega-metallurgic-science-pack", 2},
        {"omega-electromagnetic-science-pack", 2},
        {"omega-agricultural-science-pack", 2},
        {"omega-cryogenic-science-pack", 2},
		{"promethium-882-science-pack", 2},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
    -- Füge hier weitere Stufen hinzu

----------------------------------------------------------------
----------------------------------------------------------------
-------PLANET_EQUIPMENT-------

{
    name = "planet-nexus-scanning",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/nexus-scanning.png",
    icon_size = 512,
    essential = true,
    prerequisites = {"biter-egg-handling", "fusion-reactor"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
    name = "advanced-magnetic-shielding",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/shielding.png",
    icon_size = 128,
    essential = true,
    prerequisites = {"planet-nexus-scanning"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"oelectromagnetic-science-pack", 2},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
    name = "advanced-stable-electronic",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/stable-electronic.png",
    icon_size = 128,
    essential = true,
    prerequisites = {"planet-nexus-scanning"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"cryogenic-science-pack", 2},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
    name = "advanced-stronger-armor",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/stronger-armor.png",
    icon_size = 128,
    essential = true,
    prerequisites = {"planet-nexus-scanning"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 2},
      },
      time = 60
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------PLANET_DISCOVERY-------

{
    name = "planet-discovery-nexus",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/nexus.png",
    icon_size = 256,
    essential = true,
    effects = {
      --{
	    --type = "unlock-recipe", recipe = "high-pressure-acid-generator"},
       {type = "unlock-space-location",
        space_location = "nexus",
        use_icon_overlay_constant = true
      },
    },
    prerequisites = {"advanced-magnetic-shielding", "advanced-stable-electronic", "advanced-stronger-armor"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 2},
        {"electromagnetic-science-pack", 2},
        {"agricultural-science-pack", 2},
        {"cryogenic-science-pack", 2},
      },
      time = 60
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------PRODUKTIVITY-------

{
	name = "rare-element-productivity",
    type = "technology",
    icons = util.technology_icon_constant_recipe_productivity("__Nexus-Graphics__/graphics/tech/rare-element-productivity.png"),
    icon_size = 256,
	essential = true,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "element-882-separate",
        change = 0.1
      }
    },
    prerequisites = {"promethium-882-research"},
    unit =
    {
      count_formula = "1.5^L*620",--20
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
},
----------------------------------------------------------------
{
	name = "high-energetic-photonen-fluid-productivity",
    type = "technology",
    icons = util.technology_icon_constant_recipe_productivity("__Nexus-Graphics__/graphics/tech/high-energetic-photonen-fluid-productivity.png"),
    icon_size = 256,
	essential = true,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "high-energetic-photonen-fluid-mk1",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "high-energetic-photonen-fluid-mk2",
        change = 0.1
      }
    },
    prerequisites = {"promethium-882-research"},
    unit =
    {
      count_formula = "1.5^L*665",--10
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
},
----------------------------------------------------------------
{
	name = "photonen-energy-fluid-productivity",
    type = "technology",
    icons = util.technology_icon_constant_recipe_productivity("__Nexus-Graphics__/graphics/tech/photonen-energy-fluid-productivity.png"),
    icon_size = 256,
	essential = true,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "photonen-energy-fluid-mk1",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "photonen-energy-fluid-mk2",
        change = 0.1
      }
    },
    prerequisites = {"promethium-882-research"},
    unit =
    {
      count_formula = "1.5^L*665",--10
      ingredients =
      {
        {"omega-automation-science-pack", 2},
        {"omega-logistic-science-pack", 2},
        {"omega-military-science-pack", 2},
        {"omega-chemical-science-pack", 2},
        {"omega-production-science-pack", 2},
        {"omega-utility-science-pack", 2},
        {"omega-space-science-pack", 2},
		{"kr-matter-tech-card", 2},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 2},
        {"omega-electromagnetic-science-pack", 2},
        {"omega-agricultural-science-pack", 2},
        {"omega-cryogenic-science-pack", 2},
		{"promethium-882-science-pack", 2}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true
},
----------------------------------------------------------------
{
	name = "zpe-core-efficiency",
    type = "technology",
    icons = util.technology_icon_constant_recipe_productivity("__Nexus-Graphics__/graphics/tech/zpe-core-efficiency.png"),
    icon_size = 256,
	essential = true,
    effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "zero-point-energy-anti-proton",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "zero-point-energy-anti-neutron",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "zero-point-energy-anti-quarks",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "zero-point-energy-anti-leptonen",
        change = 0.1
      }
    },
    prerequisites = {"zpe-core-limit-3"},
    unit =
    {
      count_formula = "2.0^L*665",--10
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
		{"antimatter-science-pack", 1}
      },
      time = 60
    },
    max_level = 10,
    upgrade = true
},
----------------------------------------------------------------
----------------------------------------------------------------
-------MODULE-------

{
	name = "omega-module-mk1",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-module-mk1.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-module-mk1"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 600,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-module-mk2",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-module-mk2.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-module-mk2"},
	  },
	prerequisites = {"omega-module-mk1"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-module-mk3",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-module-mk3.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-module-mk3"},
	  },
	prerequisites = {"omega-module-mk2", "photon-electronics"},
	unit =
    {
      count = 1000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-module-mk4",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-module-mk4.png",
	icon_size = 1024,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-module-mk4"},
	  },
	prerequisites = {"omega-module-mk3", "antimatter-science-pack"},
	unit =
    {
      count = 400,
      ingredients =
      {
        {"omega-automation-science-pack", 3},
        {"omega-logistic-science-pack", 3},
        {"omega-military-science-pack", 3},
        {"omega-chemical-science-pack", 3},
        {"omega-production-science-pack", 3},
        {"omega-utility-science-pack", 3},
        {"omega-space-science-pack", 3},
		{"kr-matter-tech-card", 3},
	    {"kr-advanced-tech-card", 2},
	    {"kr-singularity-tech-card", 2},
        {"omega-metallurgic-science-pack", 3},
        {"omega-electromagnetic-science-pack", 3},
        {"omega-agricultural-science-pack", 3},
        {"omega-cryogenic-science-pack", 3},
		{"promethium-882-science-pack", 3},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-quality-module",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-quality-module.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-quality-module"},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 1000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
----------------------------------------------------------------
-------WARP DRIVE COMPONENTS-------

{
	name = "starmap-mapping",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/starmap-mapping.png",
	icon_size = 128,
	essential = true,
	effects = {},
	prerequisites = {"antimatter-produktion"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "warp-drive-frame",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/warp-drive-frame.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "warp-drive-frame"},
	  },
	prerequisites = {"starmap-mapping"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "exotic-matter-containment-fields-generator",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/exotic-matter-containment-fields-generator.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "exotic-matter-containment-fields-generator"},
	  },
	prerequisites = {"starmap-mapping"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "gravity-fields-generator",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/gravity-fields-generator.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "gravity-fields-generator"},
	  },
	prerequisites = {"starmap-mapping"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "antimatter-containment-fields-generator",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/antimatter-containment-fields-generator.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "antimatter-containment-fields-generator"},
	  },
	prerequisites = {"starmap-mapping"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "singularity-core",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/singularity-core.png",
	icon_size = 128,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "singularity-core"},
	  },
	prerequisites = {"starmap-mapping"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 4},
        {"omega-logistic-science-pack", 4},
        {"omega-military-science-pack", 4},
        {"omega-chemical-science-pack", 4},
        {"omega-production-science-pack", 4},
        {"omega-utility-science-pack", 4},
        {"omega-space-science-pack", 4},
		{"kr-matter-tech-card", 4},
	    {"kr-advanced-tech-card", 3},
	    {"kr-singularity-tech-card", 3},
        {"omega-metallurgic-science-pack", 4},
        {"omega-electromagnetic-science-pack", 4},
        {"omega-agricultural-science-pack", 4},
        {"omega-cryogenic-science-pack", 4},
		{"promethium-882-science-pack", 4},
		{"antimatter-science-pack", 1},
      },
      time = 60
    }
},

----------------------------------------------------------------
----------------------------------------------------------------
-------FIX TECHNOLOGY PROMETHIUM-------

{
    type = "technology",
    name = "kr-singularity-lab",
    icon = "__Krastorio2Assets__/technologies/singularity-lab.png",
    icon_size = 256,
    unit = {
      time = 30,
      count = 10000,
      ingredients = {
        { "omega-automation-science-pack", 1 },
        { "omega-logistic-science-pack", 1 },
        { "omega-chemical-science-pack", 1 },
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { "kr-matter-tech-card",1},
        { "kr-advanced-tech-card",1},
        { "kr-singularity-tech-card",1},
        { "omega-metallurgic-science-pack", 1 },
        { "omega-agricultural-science-pack", 1 },
        { "omega-electromagnetic-science-pack", 1 },
        { "omega-cryogenic-science-pack", 1 },
        { "promethium-science-pack", 1 },
      },
    },
    prerequisites = { "promethium-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-singularity-lab" },
    },
},
----------------------------------------------------------------
{
    type = "technology",
    name = "kr-antimatter-ammo",
    icon = "__Krastorio2Assets__/technologies/antimatter-ammo.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 2500,
      ingredients = {
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "kr-antimatter-reactor" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-antimatter-turret-rocket" },
      { type = "unlock-recipe", recipe = "kr-antimatter-artillery-shell" },
      { type = "unlock-recipe", recipe = "kr-antimatter-rocket" },
      { type = "unlock-recipe", recipe = "kr-antimatter-railgun-shell" },
    },
},
----------------------------------------------------------------
{
    type = "technology",
    name = "kr-antimatter-reactor",
    icon = "__Krastorio2Assets__/technologies/antimatter-reactor.png",
    icon_size = 256,
    prerequisites = { "kr-fusion-energy", "kr-singularity-tech-card" },
    unit = {
      time = 60,
      count = 2000,
      ingredients = {
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    order = "g-f-z",
    effects = {
      { type = "unlock-recipe", recipe = "kr-antimatter-reactor" },
      { type = "unlock-recipe", recipe = "kr-empty-antimatter-fuel-cell" },
      { type = "unlock-recipe", recipe = "kr-charged-antimatter-fuel-cell" },
    },
},
----------------------------------------------------------------
{
    type = "technology",
    name = "kr-antimatter-reactor-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/antimatter-reactor-equipment.png"
    ),
    upgrade = false,
    unit = {
      time = 45,
      count = 500,
      ingredients = {
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "fusion-reactor-equipment", "kr-antimatter-reactor" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-antimatter-reactor-equipment" },
    },
},
----------------------------------------------------------------
{
    type = "technology",
    name = "kr-intergalactic-transceiver",
    icon = "__Krastorio2Assets__/technologies/intergalactic-transceiver.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 10000,
      ingredients = {
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
      },
    },
    prerequisites = { "kr-antimatter-reactor" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-intergalactic-transceiver" },
    },
},
----------------------------------------------------------------
{
    type = "technology",
    name = "kr-logo",
    enabled = false,
    icon = "__Krastorio2Assets__/technologies/k-logo.png",
    icon_size = 256,
    ignore_tech_cost_multiplier = true,
    unit = {
      time = 60,
      count = 42000000,
      ingredients = {
        { "omega-production-science-pack", 1 },
        { "omega-utility-science-pack", 1 },
        { kr_optimization_tech_card_name, 1 },
        { "kr-matter-tech-card", 1 },
        { "kr-advanced-tech-card", 1 },
        { "kr-singularity-tech-card", 1 },
        { "omega-metallurgic-science-pack", 1 },
        { "omega-agricultural-science-pack", 1 },
        { "omega-electromagnetic-science-pack", 1 },
        { "omega-cryogenic-science-pack", 1 },
      },
    },
    prerequisites = { "kr-intergalactic-transceiver" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-logo" },
    },
},

----------------------------------------------------------------
----------------------------------------------------------------
-------STACKING-------

{
	name = "omega-stacking-stage1",
	type = "technology",
	icon = "__space-age__/graphics/technology/transport-belt-capacity.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "belt-stack-size-bonus", modifier = 1},
		{type = "bulk-inserter-capacity-bonus", modifier = 4},
	  },
	prerequisites = {"omega-components", "promethium-882-research"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-stacking-stage2",
	type = "technology",
	icon = "__space-age__/graphics/technology/transport-belt-capacity.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "belt-stack-size-bonus", modifier = 1},
		{type = "bulk-inserter-capacity-bonus", modifier = 4},
	  },
	prerequisites = {"omega-stacking-stage1"},
	unit =
    {
      count = 4000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-stacking-stage3",
	type = "technology",
	icon = "__space-age__/graphics/technology/transport-belt-capacity.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "belt-stack-size-bonus", modifier = 1},
		{type = "bulk-inserter-capacity-bonus", modifier = 4},
	  },
	prerequisites = {"omega-stacking-stage2"},
	unit =
    {
      count = 8000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-stacking-stage4",
	type = "technology",
	icon = "__space-age__/graphics/technology/transport-belt-capacity.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "belt-stack-size-bonus", modifier = 1},
		{type = "bulk-inserter-capacity-bonus", modifier = 4},
	  },
	prerequisites = {"omega-stacking-stage3"},
	unit =
    {
      count = 16000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-accumulator-upgrade1",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-accumulator.png",
	icon_size = 256,
	essential = true,
	effects = {
	{type = "unlock-recipe", recipe = "omega-accumulator-t2"},
	},
	prerequisites = {"omega-accumulator"},
	unit =
    {
      count = 1000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
{
	name = "omega-accumulator-upgrade2",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-accumulator.png",
	icon_size = 256,
	essential = true,
	effects = {
	{type = "unlock-recipe", recipe = "omega-accumulator-t3"},
	},
	prerequisites = {"omega-accumulator-upgrade1"},
	unit =
    {
      count = 2000,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},




-- TECHNOLOGY-DEFINITION (entity.omega_train.omega_train.lua)


{
	name = "omega-train",
	type = "technology",
	icon = "__Nexus-Graphics__/graphics/tech/omega-train.png",
	icon_size = 256,
	essential = true,
	effects = {
	  {
		type = "unlock-recipe", recipe = "omega-locomotive"},
	   {type = "unlock-recipe", recipe = "omega-cargo-wagon"},
	   {type = "unlock-recipe", recipe = "omega-fluid-wagon"},
	  },
	prerequisites = {"omega-components"},
	unit =
    {
      count = 800,
      ingredients =
      {
        {"omega-automation-science-pack", 1},
        {"omega-logistic-science-pack", 1},
        {"omega-military-science-pack", 1},
        {"omega-chemical-science-pack", 1},
        {"omega-production-science-pack", 1},
        {"omega-utility-science-pack", 1},
        {"omega-space-science-pack", 1},
		{"kr-matter-tech-card", 1},
	    {"kr-advanced-tech-card", 1},
	    {"kr-singularity-tech-card", 1},
        {"omega-metallurgic-science-pack", 1},
        {"omega-electromagnetic-science-pack", 1},
        {"omega-agricultural-science-pack", 1},
        {"omega-cryogenic-science-pack", 1},
		{"promethium-882-science-pack", 1},
      },
      time = 60
    }
},
----------------------------------------------------------------
----------------------------------------------------------------
})





----------------------------------------------------------------
-- NEXUS-THREAT LOGIK
----------------------------------------------------------------
if mods["Nexus-Threat"] and settings.startup["nexus-threat-activation"].value then

  -- 1. Register a new technology (nexus-storm-prediction)
  -- We are using data:extend because this technology does not yet exist.
  data:extend({
    {
      type = "technology",
      name = "nexus-storm-prediction",
      icon = "__Nexus-Graphics__/graphics/tech/nexus-storm-prediction.png", 
      icon_size = 256,
      effects = {}, 
      prerequisites = {"omega-components"},
      unit = {
        count = 1000,
        ingredients = {
          {"omega-automation-science-pack", 1},
          {"omega-logistic-science-pack", 1},
          {"omega-military-science-pack", 1},
          {"omega-chemical-science-pack", 1},
          {"omega-production-science-pack", 1},
          {"omega-utility-science-pack", 1},
          {"omega-space-science-pack", 1},
          {"kr-matter-tech-card", 1},
          {"kr-advanced-tech-card", 1},
          {"omega-metallurgic-science-pack", 1},
          {"omega-electromagnetic-science-pack", 1},
          {"omega-agricultural-science-pack", 1},
          {"omega-cryogenic-science-pack", 1},
          {"promethium-882-science-pack", 1},
        },
        time = 45
      },
      order = "g-b-e"
    }
  })

  -- 2. OVERWRITE EXISTING Technology (planet-discovery-nexus)
  -- We assign the table directly to data.raw. 
  -- This “overwrites” the version located earlier in your file.
  data.raw["technology"]["planet-discovery-nexus"] = {
    type = "technology",
    name = "planet-discovery-nexus",
    icon = "__Nexus-Graphics__/graphics/tech/nexus.png",
    icon_size = 256,
    essential = true,
    effects = {
       {type = "unlock-space-location", space_location = "nexus", use_icon_overlay_constant = true},
       {type = "unlock-recipe", recipe = "shield-stabilizer"},
       {type = "unlock-recipe", recipe = "nexus-stabilization-process"},
    },
    prerequisites = {"advanced-magnetic-shielding", "advanced-stable-electronic", "advanced-stronger-armor"},
    unit = {
      count = 1500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"kr-matter-tech-card", 1},
        {"kr-advanced-tech-card", 1},
        {"kr-singularity-tech-card", 1},
        {"metallurgic-science-pack", 2},
        {"electromagnetic-science-pack", 2},
        {"agricultural-science-pack", 2},
        {"cryogenic-science-pack", 2},
      },
      time = 60
    }
  }

end
