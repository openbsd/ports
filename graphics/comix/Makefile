# $OpenBSD: Makefile,v 1.1.1.1 2007/02/05 07:25:31 msf Exp $

COMMENT=	"a gtk2 comic book viewer"

DISTNAME=	comix-3.6.2
CATEGORIES=	graphics

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=comix/}

MODPY_VERSION?= 2.4

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/python/${MODPY_VERSION} \
		::graphics/py-Imaging \
		::x11/py-gtk2 

NO_BUILD=	Yes
NO_REGRESS=	Yes

PYTHON=		${LOCALBASE}/bin/python${MODPY_VERSION}

do-install:
		cd ${WRKSRC} && ${PYTHON} install.py --installdir ${PREFIX} \
		       	--no-mime --no-balloon install

PKG_ARCH=	*

.include <bsd.port.mk>
