# $OpenBSD: Makefile,v 1.3 2007/09/10 14:50:50 steven Exp $

COMMENT=		minimal texmf tree for TeXLive

V=			2007
# distfile generation number (distfiles can change for same TeXLive version)
G=			g0
DISTNAME=		texlive_texmf-minimal-$V$G
PKGNAME=		texlive_texmf-minimal-$Vp0

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

pre-install:
	rm -Rf ${WRKDIST}/texmf/doc/man
	rm -Rf ${WRKDIST}/texmf-dist/source
# fix for broken bbold font
	rm -f ${WRKDIST}/texmf-dist/tex/latex/jknapltx/ubbold.fd
	cd ${WRKDIST}/texmf-dist/tex/latex/bbold/ && mv -f Ubbold.fd ubbold.fd

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

post-install:
# tweak fmtutil.cnf (e.g. there's no XeTeX support in this minimal texmf)
	cp ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
		${PREFIX}/share/texmf/web2c/fmtutil.cnf-dist
	mv ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
		${PREFIX}/share/texmf/web2c/fmtutil.cnf-full
	sed -e 's/.*xetex.*//g' ${PREFIX}/share/texmf/web2c/fmtutil.cnf-full \
		> ${PREFIX}/share/texmf/web2c/fmtutil.cnf-minimal

.include <bsd.port.mk>
