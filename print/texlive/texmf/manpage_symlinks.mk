# A whole load of manual pages use a `.so` to "link" to another man page.
#
# This makes a warning at package time about a missing short description, and
# furthermore, `mandoc -Tlint` warns that `.so` is fragile and that we'd be
# better off using ln(1).

tl-manpage-symlinks:
	cd ${WRKBUILD}/texmf-dist/doc/man/man1 && \
		ln -sf ptftopl.1 uptftopl.1 && \
		ln -sf ptex.1 uptex.1 && \
		ln -sf ppltotf.1 uppltotf.1 && \
		ln -sf latex.1 uplatex.1 && \
		ln -sf latex.1 platex.1 && \
		ln -sf ptex.1 euptex.1 && \
		ln -sf ptex.1 eptex.1 && \
		ln -sf dvipng.1 dvigif.1 && \
		ln -sf latex.1 xelatex.1 && \
		ln -sf dvipdfmx.1 xdvipdfmx.1 && \
		ln -sf updmap.1 updmap-user.1 && \
		ln -sf updmap.1 updmap-sys.1 && \
		ln -sf luatex.1 texluac.1 && \
		ln -sf luatex.1 texlua.1 && \
		ln -sf mktexlsr.1 texhash.1 && \
		ln -sf texconfig.1 texconfig-sys.1 && \
		ln -sf epstopdf.1 repstopdf.1 && \
		ln -sf pdftex.1 pdflatex.1 && \
		ln -sf latex.1 pdfcslatex.1 && \
		ln -sf pdfopen.1 pdfclose.1 && \
		ln -sf tangle.1 otangle.1 && \
		ln -sf dvitype.1 odvitype.1 && \
		ln -sf dvicopy.1 odvicopy.1 && \
		ln -sf fmtutil.1 mktexfmt.1 && \
		ln -sf mf.1 mf-nowin.1 && \
		ln -sf latex.1 lualatex.1 && \
		ln -sf aleph.1 lamed.1 && \
		ln -sf kpsetool.1 kpsexpand.1 && \
		ln -sf kpsetool.1 kpsepath.1 && \
		ln -sf tex.1 initex.1 && \
		ln -sf mf.1 inimf.1 && \
		ln -sf fmtutil.1 fmtutil-user.1 && \
		ln -sf fmtutil.1 fmtutil-sys.1 && \
		ln -sf extractbb.1 ebb.1 && \
		ln -sf dvipdfmx.1 dvipdfm.1 && \
		ln -sf latex.1 dvilualatex.1 && \
		ln -sf dvilj.1 dvilj6.1 && \
		ln -sf dvilj.1 dvilj4l.1 && \
		ln -sf dvilj.1 dvilj4.1 && \
		ln -sf dvilj.1 dvilj2p.1 && \
		ln -sf cweb.1 cweave.1 && \
		ln -sf ctwill.1 ctwill-twinx.1 && \
		ln -sf ctwill.1 ctwill-refsort.1 && \
		ln -sf cweb.1 ctangle.1 && \
		ln -sf latex.1 cslatex.1
