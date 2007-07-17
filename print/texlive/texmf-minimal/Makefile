# $OpenBSD: Makefile,v 1.1.1.1 2007/07/17 21:53:34 jasper Exp $

COMMENT=		minimal texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-minimal-${V}
CATEGORIES=		print

HOMEPAGE=		http://tug.org/texlive/

MAINTAINER=             Edd Barrett <vext01@gmail.com>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://students.dec.bournemouth.ac.uk/ebarrett/texlive/distfiles/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

pre-install:
	@# Blast away man pages. -base will do these 
	rm -Rf ${WRKDIST}/texmf/doc/man

do-install:
	@# Simple copy for install
	umask 022 && \
		cp -r ${WRKDIST}/texmf ${PREFIX}/share && \
		cp -r ${WRKDIST}/texmf-dist ${PREFIX}/share

post-install:
	@# Tweak fmtutil.cnf as there is no
	@# XeTeX in this minimal texmf
	cp ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
		${PREFIX}/share/texmf/web2c/fmtutil.cnf-dist
	mv ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
		${PREFIX}/share/texmf/web2c/fmtutil.cnf-full
	sed -e 's/.*xetex.*//g' ${PREFIX}/share/texmf/web2c/fmtutil.cnf-full \
		> ${PREFIX}/share/texmf/web2c/fmtutil.cnf-minimal

	@# updmap.cnf will change when updmap-sys is run
	mv ${PREFIX}/share/texmf/web2c/updmap.cfg \
		${PREFIX}/share/texmf/web2c/updmap.cfg-dist

.include <bsd.port.mk>
