# $OpenBSD: Makefile,v 1.18 2013/04/15 20:51:50 jasper Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.0.0
REVISION=		13
CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.0 # 16.0
SHARED_LIBS +=  fa                        0.0 # 5.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.augeas.net/

MODULES=		devel/gettext

LIB_DEPENDS=		textproc/libxml

WANTLIB += c m ncurses readline xml2 z

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-compile-warnings=yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# https://fedorahosted.org/augeas/ticket/322
# https://fedorahosted.org/augeas/ticket/324
post-extract:
.for l in bootconf ntpd
	cp ${FILESDIR}/$l.aug ${WRKSRC}/lenses/
	cp ${FILESDIR}/test_$l.aug ${WRKSRC}/lenses/tests/
	cp ${WRKSRC}/tests/lens-fonts.sh ${WRKSRC}/tests/test-$l.sh
.endfor

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
