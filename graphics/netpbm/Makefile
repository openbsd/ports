# $OpenBSD: Makefile,v 1.23 2001/10/03 03:09:31 brad Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

COMMENT=	"toolkit for converting images between different formats"

DISTNAME=	netpbm-9.19
CATEGORIES=	graphics
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= netpbm
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://netpbm.sourceforge.net/

LIB_DEPENDS=	tiff.35::graphics/tiff \
		png.2::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	${MAKE_FLAGS} PREFIX="${WRKINST}${TRUEPREFIX}"

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

post-patch:
	@mv -f ${WRKSRC}/pm_config.h ${WRKSRC}/pm_config.h.bak
	@mv -f ${WRKSRC}/pbm/pm.h ${WRKSRC}/pbm/pm.h.bak
	@sed -e s#!!X11R6!!#${X11BASE}#g \
		${WRKSRC}/pm_config.h.bak > ${WRKSRC}/pm_config.h
	@sed -e s#shhopt.h#pm_shhopt.h#g \
		${WRKSRC}/pbm/pm.h.bak > ${WRKSRC}/pbm/pm.h
	@cp -f ${FILESDIR}/Makefile.config.OpenBSD \
		${WRKSRC}/Makefile.config
	@cd ${WRKSRC}/shhopt; ln -sf shhopt.h pm_shhopt.h

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_FLAGS+=	NETPBMLIBTYPE=unixstatic
.else
MAKE_FLAGS+=	NETPBMLIBTYPE=unixshared
.endif
