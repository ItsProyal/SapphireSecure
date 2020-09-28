local Characters = {
    a = "⒢Ⓧᶻ⑷Ѡ",
    A = "␂£↚⓯∰",
    b = "⍷∜Ϟ≻❂",
    B = "Ⓦ.℅♨ᵨ",
    c = "₴®⒂⋠.",
    C = "⌥₡❛⋊⇧",
    d = "◚≹✉◌∭",
    D = "❃◊≉⒊η",
    e = "◮⏂₪Ⓠ✔",
    E = "❇⁶➪‿℥",
    f = "✯▐⏂☼↹",
    F = "ᶙҨ☬⍍⋫",
    g = "ᶣ♖ʳ⒆ᶴ",
    G = "⒠✹⋓ᵃ⑼",
    h = "℔⍉✗␇◅",
    H = "␂⓭⁽₮ⓧ",
    i = "Ѫ϶ᴹᶇᵚ",
    I = "»ᴾ⊃⍨ᵞ",
    j = "☺≀₢⍡␂",
    J = "✔♟␛↿ᵪ",
    k = "◗⒙Ⓧᵒ☑",
    K = "₈≐ᵒ℥✃",
    l = "⋋␊⒚∈ζ",
    L = "ʱ⇝Ⓡ✧Ѽ",
    m = "⌚Œ⑵⇙ᵒ",
    M = "ⓔπ➟␀⒎",
    n = "₁➘≬⇂☨",
    N = "ᶲѨҦℒⓌ",
    o = "ⓑ➯⒓╬ᶠ",
    O = "╬≇⊏⋘ⓦ",
    p = "ⓨᴮ☀⍚⋋",
    P = "⍦Ⓠ▱⁻␣",
    q = "╟☴␏⋆☈",
    Q = "↜⍑≒➝➯",
    r = "⓾ˢ❝⒵⑀",
    R = "ᵪ⍣₌₊ᶦ",
    s = "➜▌ʓ✎»",
    S = "⍉∸⑭⑁ᵝ",
    t = "↲✌≜▢ϔ",
    T = "ᶕ⌦░⒦⊆",
    u = "③ᴳѤᵞⓟ", 
    U = "➾⒵ᴽ⒤ᶡ",
    v = "ᴼ∈ℓ∈≞",
    V = "₮×ℏ⍃⓻",
    w = "ᶼᶮ⇃Ⓢ➡",
    W = ".⁹∻⒉◟",
    x = "␢✲✿ʵᴳ",
    X = "▐〉⍍ѫ≓",
    y = "•₆✴◍➬",
    Y = "❄ﬂ⏃ᶠ♝",
    z = "✐⅗▤∝⋤",
    Z = "ʴ✓☒ϯⓍ",
    ["1"] = "⑈ᵉ❝▥ℍ",
    ["2"] = "ᵿπ↸◑₅",
    ["3"] = "↷∺ˢͮⓢ",
    ["4"] = "⓷⓷.ᶿ❢",
    ["5"] = "⍕ᵐʔ⇖♞",
    ["6"] = "▲⇢ℙ±☐",
    ["7"] = "Ξ♯₹⊀ѭ",
    ["8"] = "╕▄☛⌷✑",
    ["9"] = "⍛Ѫᵡ¢⒨",
    ["0"] = "αⓘ₌≜␖",
    grave = "⒕ϰ▼♃➄",
    ["/"] = "⋗≶⒢⍩ᶔ",
    backslash = "ᴼ▷➉≿≡", 
    ["["] = "➜◮⍗␝⏈", 
    ["]"] = "➇♨ѻ⒩↳", 
    ["("] = "⊇⑮ʋⓌ⌇",
    [")"] = "✰¥ʣʝ⋤",
    ["+"] = "♨₰←╩❈",
    ["-"] = "⌅≠⇈⋛Ϩ",
    ["="] = "⅔⇖Π▫⊝",
    ["{"] = "✮♫↯⊍␔",
    ["}"] = "⇗␘⊝⌶∈",
    [";"] = "≵ϔʡ∛⒘",
    [":"] = "❏➂❦▭ᵪ",
    [">"] = "↳␃﹏、⍠",
    ["<"] = "ͤ⅛⊶ø◥",
    ["'"] = "≂∀ϓ«ζ",
    ['"'] = "↿∜◉⑩∀",
    ["|"] = "⇀④╢⑷☣",
    ["_"] = "ϒ⒬❃☺ᵡ",
    ["*"] = "⇌ᶾ⍓⑵｀",
    ["!"] = "☡⊃➟③π",
    ["@"] = "≝ﬂᵒᵩ₈",
    ["#"] = "∻⍔⊔❦◪", 
    ["$"] = "⍦≝≭⌹ⓓ", 
    ["%"] = "ϗⒷ⊇▪ᴸ",
    ["^"] = "Ѩ♦➭❼.",
    ["&"] = "⅕⌸⋔¬ᵒ",
    ["."] = "ϱᵎ⋩ˡ⇎",
    [","] = "ᶞҌπ⌤ϫ",
    ["~"] = "Ѣ➺ʳᵶ⌴",
    [" "] = " ", -- Maybe "✠␕Ø✰╗"
}

local SapphireSecure = {
    Encode = function(data)
        local Output = ""
        for i,v in next, data:split("") do 
            if Characters[v] then 
                Output = Output.."c"..Characters[v] 
            elseif v == [[\]] then 
                Output = Output.."c"..Characters["backslash"]
            elseif v == [[`]] then 
                Output = Output.."c"..Characters["grave"]
            end
        end
        return Output
    end,
    Decode = function(data)
        local Output = ""
        for i,v in next, data:split("c") do 
            for k,x in next, Characters do 
                if x == v then 
                    if k ~= "backslash" and k ~= "grave" then
                        Output = Output..k 
                    else 
                        if k == "backslash" then 
                            Output = Output..[[\]] 
                        elseif k == "grave" then 
                            Output = Output..[[`]] 
                        end 
                    end
                end
            end
        end
        return Output
    end
}

return SapphireSecure

-- This is a recreation of ChineseSecure, which is a decent obfuscation however this is for better uses!
