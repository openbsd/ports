# $OpenBSD: Makefile,v 1.1.1.1 2002/02/14 17:30:45 naddy Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"FM radio input plug-in for XMMS"

DISTNAME=	xmms-FMRadio-1.5
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio x11
NEED_VERSION=	1.500

HOMEPAGE=	http://silicone.free.fr/xmms-FMRadio/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	xmms.2::audio/xmms

MAKE_ENV=	CC="${CC}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms-fmradio
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmms-fmradio/

.include <bsd.port.mk>
