# $OpenBSD: Makefile,v 1.10 2013/01/02 20:28:08 jasper Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.0.0
REVISION=		8
CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.0 # 16.0
SHARED_LIBS +=  fa                        0.0 # 5.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/download/

MODULES=		devel/gettext

LIB_DEPENDS=		textproc/libxml

WANTLIB += c m ncurses readline xml2 z

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-compile-warnings=yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# https://fedorahosted.org/augeas/ticket/322
post-extract:
	cp ${FILESDIR}/bootconf.aug ${WRKSRC}/lenses/
	cp ${FILESDIR}/test_bootconf.aug ${WRKSRC}/lenses/tests/
	cp ${WRKSRC}/tests/lens-fonts.sh ${WRKSRC}/tests/test-bootconf.sh

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
