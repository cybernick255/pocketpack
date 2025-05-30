//
//  TopicGuide.swift
//  Pocketpack
//
//  Created by Nicolas Deleasa on 5/15/25.
//

import Foundation

struct Topic
{
    let name: String
    let tileImage: String
    let detailedImage: String
    let description: String
    let sources: [Source]
    
    var advices: [Advice]
}

let wildlifeAndInsectsTopics: [Topic] =
[
    tickTopic,
    bearTopic
]

let environmentalHazardsTopics: [Topic] =
[
    poisonIvyTopic
]

let survivalAndSafetyTopics: [Topic] =
[
    firstAidBasicsTopic
]

let practicalTipsTopics: [Topic] =
[
    leaveNoTraceTopic
]
    

let tickTopic = Topic(
    name: "Tick",
    tileImage: "tick-no-background",
    detailedImage: "tick",
    description: "Ticks are small, blood-feeding arachnids often found in wooded or grassy areas. While many are harmless, some can carry diseases like Lyme disease, making prevention and prompt removal important for campers and hikers.",
    sources:
    [
        Source(title: "National Park Service", url: "https://www.nps.gov/articles/000/ticks-and-tickborne-diseases.htm")
    ],
    advices:
    [
        Advice(
            title: "How to Protect Yourself",
            items:
                [
                    Item(
                        title: "Dress for Protection",
                        description: "Wear long sleeves and pants, tuck your pants into socks, and wear a hat or cap to reduce skin exposure to ticks.",
                        points: []
                    ),
                    Item(
                        title: "Stick to the Trail",
                        description: "Stay in the middle of trails to avoid brushing against vegetation, and don’t sit on logs where ticks might be hiding.",
                        points: []
                    ),
                    Item(
                        title: "Wear Light Colors",
                        description: "Choose light-colored clothing to easily spot and remove ticks before they attach.",
                        points: []
                    ),
                    Item(
                        title: "Use Tick Repellent",
                        description: "Use EPA-approved insect repellents on exposed skin to keep ticks at bay.",
                        points: []
                    ),
                    Item(
                        title: "Treat Gear with Permethrin",
                        description: "Apply permethrin to your clothing and gear to create a tick barrier that lasts for multiple washes.",
                        points: []
                    ),
                    Item(
                        title: "Do a Thorough Tick Check",
                        description: "After being outdoors, inspect your body (including hidden areas) for ticks. Also check your clothes, gear, and pets.",
                        points: []
                    ),
                    Item(
                        title: "Shower Soon After",
                        description: "Shower as soon as possible after outdoor activities to wash away ticks before they can attach.",
                        points: []
                    ),
                    Item(
                        title: "Heat-Treat Clothing",
                        description: "Toss clothes in the dryer on high heat for at least 10 minutes to kill any lingering ticks.",
                        points: []
                    ),
                    Item(
                        title: "Carry a Tick Kit",
                        description: "Bring a tick kit with essentials like tweezers, repellent, permethrin spray, rubbing alcohol or soap, and a mirror for thorough checks.",
                        points: []
                    )
                ]
        )
    ]
)

let bearTopic = Topic(
    name: "Bear",
    tileImage: "bear-no-background",
    detailedImage: "bear",
    description: "Bears are powerful, curious animals that typically avoid humans—but they can become dangerous if surprised, threatened, or attracted by food. Understanding bear behavior and following simple safety tips can greatly reduce your risk during outdoor adventures.",
    sources:
    [
        Source(title: "National Park Service", url: "https://www.nps.gov/subjects/bears/index.htm")
    ],
    advices:
    [
        Advice(
            title: "Bear Encounter Safety",
            items:
            [
                Item(
                    title: "Talk Calmly",
                    description: "Let the bear know you’re human by speaking calmly, staying still, and slowly waving your arms. If it stands on its hind legs, it’s likely curious, not aggressive.",
                    points: []
                ),
                Item(
                    title: "Stay Calm and Avoid Sudden Moves",
                    description: "Most bears don’t want to attack. Speak in a low tone, don’t scream, and avoid high-pitched sounds. Stay still and avoid sudden movements to prevent triggering an attack.",
                    points: []
                ),
                Item(
                    title: "Protect Kids",
                    description: "Pick up children immediately. Slowly wave your arms and calmly tell the bear to back off. Never run or scream, as it may see you as prey.",
                    points: []
                ),
                Item(
                    title: "Travel in Groups",
                    description: "Hiking with others makes you more noticeable and less likely to surprise a bear. Groups are louder and more intimidating to bears than solo hikers.",
                    points: []
                ),
                Item(
                    title: "Make Yourself Look Bigger",
                    description: "Stand on higher ground or spread your arms to appear larger and more imposing to the bear.",
                    points: []
                ),
                Item(
                    title: "Keep Food Away",
                    description: "Never let a bear get to your food. Access to human food encourages bad behavior and endangers others.",
                    points: []
                ),
                Item(
                    title: "Hold Onto Your Pack",
                    description: "Don’t drop your backpack—it can shield your back and prevent the bear from reaching your food.",
                    points: []
                ),
                Item(
                    title: "Move Away Slowly",
                    description: "If the bear is standing still, slowly and sideways move away while keeping an eye on the bear. Sideways movement is less threatening and reduces the risk of tripping.",
                    points: []
                ),
                Item(
                    title: "Never Run",
                    description: "Don’t run—if the bear follows, stand your ground. Bears are fast and can outrun you uphill or downhill. Running may trigger them to chase.",
                    points: []
                ),
                Item(
                    title: "Don’t Climb Trees",
                    description: "Both black bears and grizzlies can climb trees. Climbing won’t keep you safe.",
                    points: []
                ),
                Item(
                    title: "Give the Bear Space",
                    description: "If you can, leave the area or wait until the bear moves away. Always leave the bear an escape route.",
                    points: []
                ),
                Item(
                    title: "Be Wary of Cubs",
                    description: "Never get between a mother bear and her cubs. If she thinks her cubs are threatened, she’s much more likely to attack.",
                    points: []
                )
            ]
        )
    ]
)

let poisonIvyTopic = Topic(
    name: "Poison Ivy",
    tileImage: "poison-ivy-no-background",
    detailedImage: "poison-ivy",
    description: "Poison ivy is a plant that causes an itchy, blistering rash when its oil—urushiol—comes into contact with your skin. It grows across most of North America and can be found in forests, fields, and even along hiking trails. Learning to spot it is key to avoiding uncomfortable encounters.",
    sources:
    [
        Source(title: "American Museum of Natural History", url: "https://www.amnh.org/learn-teach/curriculum-collections/biodiversity-counts/plant-identification/tips-to-identify-poison-ivy")
    ],
    advices:
    [
        Advice(
            title: "How to Identify Poison Ivy",
            items:
            [
                Item(
                    title: "Leaves in Threes",
                    description: "Poison ivy has compound leaves made up of three leaflets, inspiring the saying \"leaves of three, let it be.\"",
                    points: []
                ),
                Item(
                    title: "Long Middle Leaflet",
                    description: "The middle leaflet’s stem is noticeably longer than those of the side leaflets, making it easy to spot.",
                    points: []
                ),
                Item(
                    title: "Edge Texture",
                    description: "Leaf edges may be smooth or coarsely toothed, so look closely at the margins.",
                    points: []
                ),
                Item(
                    title: "Leaf Surface",
                    description: "The leaves can be either shiny or dull, adding to their tricky identification.",
                    points: []
                )
            ]
        ),
        // Note: Add "What to Do if You Come in Contact" advice.
//        Advice(
//            title: "What to Do if You Come in Contact",
//            items:
//                [
//                    Item(title: "", description: "", points: [])
////                    "**Immediately wash the area** with soap and cool water (within 30 minutes if possible).",
////                    "Use a **specialized poison ivy cleanser** like Tecnu or Zanfel if available.",
////                    "**Avoid scratching** to prevent infection.",
////                    "Apply **calamine lotion, hydrocortisone cream,** or **cool compresses** to soothe itching.",
////                    "For severe rashes, **consult a doctor**—you may need prescription treatment."
//                ]
//        )
    ]
)

let firstAidBasicsTopic = Topic(
    name: "First Aid Basics",
    tileImage: "first-aid-basics-no-background",
    detailedImage: "first-aid-basics",
    description: "Knowing first aid can make the difference between a manageable incident and a life-threatening emergency. When you’re out camping or hiking, access to medical help may be delayed—so being able to handle common injuries like cuts, burns, or bites can help prevent complications and keep everyone safe until help arrives.",
    sources:
    [
        Source(
            title: "American Red Cross",
            url: "https://www.redcross.org/take-a-class/resources/articles/camping-first-aid-kit-checklist?srsltid=AfmBOoqjEQCpQsSeRsEbC242t13dzCt5-jgupLdR3fCmXi3dMCQ02h6n"
        )
    ],
    advices:
    [
        Advice(
            title: "First Aid Kit Checklist",
            items:
                [
                    Item(
                        title: "Essentials",
                        description: "",
                        points:
                            [
                                "Adhesive bandages",
                                "Antibacterial ointment",
                                "Antiseptic wipes",
                                "Burn gel",
                                "CPR masks",
                                "Disposable gloves",
                                "Duct tape",
                                "Elastic wrap bandage",
                                "First aid manuals",
                                "Gauze pads",
                                "Hand sanitizer",
                                "Heating pad",
                                "Hydrocortisone cream",
                                "Instant cold pack",
                                "Medical tape",
                                "Scissors",
                                "Splint",
                                "Sterile saline solution",
                                "Thermometer",
                                "Tourniquet",
                                "Tweezers",
                                "Emergency Blanket"
                            ]
                    ),
                    Item(
                        title: "Other Items",
                        description: "",
                        points:
                            [
                                "Aloe gel or other treatment for sunburn",
                                "Anti-diarrheal medication",
                                "Antihistamines (children and adults)",
                                "Eye drops",
                                "Insect repellent",
                                "Pain relievers (children and adults)",
                                "Personal medications",
                                "Oral glucose tablets"
                            ]
                    )
                ]
        )
        // Note: Add "How to Treat Common Injuries" Advice.
//        Advice(
//            title: "How to Treat Common Injuries",
//            items:
//                [
//                    Item(title: "", description: "", points: [])
////                    "**Minor Cuts & Scrapes**\n  - Clean the wound with water; remove dirt or debris gently.\n  - Apply an antiseptic (like hydrogen peroxide or alcohol-free wipes).\n  - Cover with a sterile bandage or gauze.\n  - Change the dressing daily and monitor for signs of infection.",
////                    "**Sprains & Strains**\n  - Use the **R.I.C.E. method**—**R**est, **I**ce (15-20 min every few hours), **C**ompression (wrap with elastic bandage), **E**levation (raise injured area above heart level).\n  - Avoid putting weight on the area.\n  - Use pain relievers like ibuprofen if needed.",
////                    "**Burns (Minor)**\n  - Cool the area immediately with **cool (not cold) water** for 10-15 minutes.\n  - Do **not apply ice**, butter, or oil.\n  - Cover loosely with sterile gauze.\n  - Seek medical help for large or blistering burns.",
////                    "**Insect Bites & Stings**\n  - Remove stinger (if present) by scraping it sideways with a card—**don’t pinch**.\n  - Wash area with soap and water.\n  - Apply cold compress to reduce swelling.\n  - Use antihistamines or hydrocortisone cream for itching.\n  - Watch for allergic reactions (difficulty breathing, swelling of face/lips—use an EpiPen if available and call for help).",
////                    "**Blisters**\n  - Avoid popping if possible—protect with a bandage or moleskin.\n  - If it pops, clean with antiseptic and cover with a sterile bandage.",
////                    "**Nosebleeds**\n  - Sit upright, tilt head slightly forward.\n  - Pinch the nostrils together for 10–15 minutes.\n  - Avoid blowing nose for several hours after bleeding stops.",
////                    "**Heat Exhaustion**\n  - Move to a cooler area immediately.\n  - Have the person lie down and elevate legs.\n  - Give sips of water slowly.\n  - Apply cool, wet cloths to the skin."
//                ]
//        )
    ]
)

let leaveNoTraceTopic = Topic(
    name: "Leave No Trace",
    tileImage: "leave-no-trace-no-background",
    detailedImage: "leave-no-trace",
    description: "The **Leave No Trace** principles are a set of outdoor ethics that help minimize your impact on nature. Whether you’re hiking, camping, or just spending time outdoors, following these guidelines ensures that wild places stay beautiful and accessible for future generations.",
    sources:
    [
        Source(title: "Leave No Trace", url: "https://lnt.org/why/7-principles/")
    ],
    advices:
    [
        Advice(
            title: "7 Principles of Leave No Trace",
            items:
                [
                    Item(
                        title: "1. Plan Ahead & Prepare",
                        description: "Planning ahead ensures a smooth trip and protects the natural world. Before you go:",
                        points:
                        [
                            "Learn the rules and potential hazards of your destination.",
                            "Pack for weather changes, emergencies, and rough terrain.",
                            "Travel during off-peak times to reduce crowding.",
                            "Keep groups small, and split into smaller groups if necessary.",
                            "Minimize waste by repackaging food and gear.",
                            "Rely on maps and compasses instead of marking trails or using physical indicators."
                        ]
                    ),
                    Item(
                        title: "2. Travel & Camp on Durable Surfaces",
                        description: "Stay on established routes and use durable surfaces like packed dirt, rock, gravel, or snow to prevent damage to fragile areas.",
                        points:
                        [
                            "Camp at least 200 feet away from lakes and streams to protect waterways.",
                            "Look for existing campsites instead of creating new ones.",
                            "In popular areas, keep campsites small and use existing trails.",
                            "In remote areas, spread out to avoid creating visible trails and sites.",
                            "Avoid areas that show early signs of wear."
                        ]
                    ),
                    Item(
                        title: "3. Dispose of Waste Properly",
                        description: "Whatever you pack in, pack out. Always leave your campsite cleaner than you found it.",
                        points:
                        [
                            "Bring home all trash, food scraps, and litter. Never burn or bury trash.",
                            "For human waste, dig a hole 6–8 inches deep and 200 feet from water and trails. Cover and disguise it when done.",
                            "Either bury used toilet paper deep in the hole or pack it out with you.",
                            "Wash dishes or yourself at least 200 feet from water sources, using a small amount of biodegradable soap and scattering the water afterward."
                        ]
                    ),
                    Item(
                        title: "4. Leave What You Find",
                        description: "Nature and history both tell stories. Let others discover them too.",
                        points:
                        [
                            "Don’t move rocks, plants, or artifacts.",
                            "Observe cultural or historic sites without disturbing them.",
                            "Avoid bringing in non-native species.",
                            "Skip building structures, furniture, or trenches."
                        ]
                    ),
                    Item(
                        title: "5. Minimize Campfire Impacts",
                        description: "Campfires are a tradition, but they can cause lasting damage.",
                        points:
                        [
                            "Use a camp stove for cooking and a lantern for light whenever possible.",
                            "If campfires are allowed, use existing fire rings or pans.",
                            "Keep fires small and only use sticks found on the ground that snap easily.",
                            "Burn wood and coals down to ash, fully extinguish fires, and scatter cool ashes."
                        ]
                    ),
                    Item(
                        title: "6. Respect Wildlife",
                        description: "Wild animals live where we play. Keep them wild and safe.",
                        points:
                        [
                            "Watch from a distance—don’t approach, feed, or follow animals.",
                            "Feeding wildlife harms them and disrupts their natural behaviors.",
                            "Keep pets leashed or consider leaving them at home.",
                            "Avoid wildlife during breeding, nesting, or wintering seasons."
                        ]
                    ),
                    Item(
                        title: "7. Be Considerate of Others",
                        description: "Sharing nature means sharing respect. Be mindful of fellow visitors.",
                        points:
                        [
                            "Keep noise low and let the sounds of nature take over.",
                            "Yield to others on the trail, especially pack animals.",
                            "Choose campsites away from busy trails.",
                            "Greet others and share the trail with a smile."
                        ]
                    )
                ]
        )
    ]
)
