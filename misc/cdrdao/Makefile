# $OpenBSD: Makefile,v 1.15 2002/05/13 23:31:26 espie Exp $

COMMENT=	"write audio/data CD-Rs in disk-at-once mode"

DISTNAME= 	cdrdao-1.1.5
CATEGORIES=	audio misc
NEED_VERSION=	1.489
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cdrdao/}
DISTFILES=	${DISTNAME}.src${EXTRACT_SUFX}

HOMEPAGE=	http://cdrdao.sourceforge.net/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/pccts

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/paranoia ${WRKSRC}/scsilib
CONFIGURE_ARGS+=	--with-posix-threads=no
MAKE_ENV=		CCOM="${CC}"

.if ${MACHINE} != "i386" || ${CC} != "cc"
pre-configure:
	@ln -sf ${WRKSRC}/scsilib/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/scsilib/RULES/${MACHINE}-openbsd-${CC}.rul
.endif

post-install:
	@strip ${PREFIX}/bin/cdrdao
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrdao
	cd ${WRKDIST} && ${INSTALL_DATA} README README.PlexDAE \
	    ${PREFIX}/share/doc/cdrdao

.include <bsd.port.mk>
