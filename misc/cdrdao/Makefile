# $OpenBSD: Makefile,v 1.21 2005/05/31 19:40:24 millert Exp $

COMMENT=	"write audio/data CD-Rs in disk-at-once mode"

DISTNAME= 	cdrdao-1.2.0
CATEGORIES=	audio misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cdrdao/}

HOMEPAGE=	http://cdrdao.sourceforge.net/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/paranoia ${WRKSRC}/scsilib/conf
CONFIGURE_ARGS+=	--with-posix-threads=no --without-lame \
			--with-gtkmm-prefix=/nonexistent
MAKE_ENV=		CCOM="${CC}"

.if ${MACHINE} != "i386" || ${CC} != "cc"
pre-configure:
	@ln -sf ${WRKSRC}/scsilib/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/scsilib/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

post-install:
	@strip ${PREFIX}/bin/cdrdao ${PREFIX}/bin/toc2cue
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
