## RCS 2022-233

repository for RCS 2022-233

有相関大規模MIMOでのBiGaBPによるデータ・チャネル同時推定における深層展開の応用

明治大学大学院 理工学研究科 電気工学専攻 修士1年   槇 鴻一

News:

- 2023/01/24 MATLABソースコード、誤差逆伝搬の理論式を掲載しました。

このレポジトリにはRCS 2022-233における補足資料を掲載いたします。

お気づきの点等ございましたら、著者に直接ご連絡いただけますと幸いです。(ce221065 at meiji.ac.jp)
大変恐縮ですが、GitHubの使い方はまだ勉強中でございます。操作に不慣れなため、Issue等立てていただきましてもしばらくの間は上手く対応できないことが予想されます。ご承知の程よろしくお願いいたします。

------

#### MATLABソースコードの使い方

MATLAB source code 内のディレクトリ

 / MATLAB source code / Add this directory to your MATLAB path

をフォルダーとしてMATLABのパスに追加後、「Execute_DeepUnfolding_of_BiGaBP_QPSK.m」を実行することで深層展開が開始します。１ミニバッチの学習が完了するごとに、更新されたパラメータが格納されたmatファイル「ExpoDecay_epoch＿"エポック数"＿minibatch＿"ミニバッチ番号"＿batchsize＿バッチサイズ".mat」およびこれまでの損失関数の増減を示した「Losslist.mat」が自動で保存・更新されると共に、暫定的な損失関数の増減を示したグラフが表示されます。学習途中に何らかのトラブルで処理が中断した場合も、特に何も操作することなく「Execute_DeepUnfolding_of_BiGaBP_QPSK.m」を再び実行するだけで続きから学習を再開できます。

------

#### お詫びとお願い

大部分を以下の先生方の先行研究

K. Ito, T. Takahashi, S. Ibi, and S. Sampei, ‘Bilinear Gaussian Belief Propagation for Large MIMO Channel and Data Estimation’, in *GLOBECOM 2020  IEEE Global Communications Conference*, Taipei, Taiwan, Dec. 2020.

伊藤賢太, 高橋拓海, 衣斐信介,  三瓶政一, ‘ガウス信念伝搬法に基づく大規模MIMO通信路とデータの繰り返し同時推定に関する一検討’, 信学技報, RCS2020-40,2020.6.

から引用した小稿「槇鴻一, '有相関大規模MIMOでのBiGaBPによるデータ・チャネル同時推定における深層展開の応用', 信学技報,RCS 2022-233,2023.1.」には、情報不足・誤った表現が多数ございます。著者としてお詫び申し上げます。大変申し訳ございませんでした。

信学技報と学会当日の発表で相違のある点がございましたら、正しい内容は学会当日に発表したものとなります。今後、誤りを訂正した内容を資料としてまとめGitHubに掲載させていただく予定です。なお、信学技報に掲載した「図2 各手法の BER 特性の比較」に関しましては、学習回数は400と不十分ではあるものの、実際にGitHubにアップロードされている「Execute_DeepUnfolding_of_BiGaBP_QPSK.m」により学習させたもので間違いありません。

また、付録として RCS 2022-233 信学技報の６ページに記載した「Algorithm 2」は、内容としては誤っていないものの、多数の変数を置いた読みにくく不適切な表現でした。重ねてお詫び申し上げます。
誤差逆伝搬の理論式は、本レポジトリの「Backpropagation of BiGaBP.pdf」をご参照いただくようお願いいたします。
