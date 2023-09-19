library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)
#.gvをpdf出力する
DiagrammeR::grViz("flowchart2.gv") %>% 
  DiagrammeRsvg::export_svg() %>% 
  charToRaw() %>% 
  rsvg::rsvg_pdf("cd_flowchart.pdf")

#.gvをsvg出力する
#パワーポイントに貼り付ける場合はこちらの方が使いやすい
DiagrammeR::grViz("flowchart2.gv") %>% 
  DiagrammeRsvg::export_svg() %>% 
  charToRaw() %>% 
  rsvg::rsvg_svg("cd_flowchart.svg")

