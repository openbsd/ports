# $OpenBSD: Makefile,v 1.9 1999/03/15 14:43:04 ian Exp $
#
# Relevant URLs:	http://www.transvirtual.com/kaffe/

DISTNAME=       kaffe-1.0.b3
CATEGORIES=	lang

NEED_VERSION=	1.73

MASTER_SITES=	ftp://ftp.transvirtual.com/pub/kaffe/

LIB_DEPENDS=	jpeg.62.:${PORTSDIR}/graphics/jpeg \
			gif.3.:${PORTSDIR}/graphics/giflib \
			png.1.:${PORTSDIR}/graphics/png

.if defined(NO_SHARED_LIBS)
   BROKEN= "doesn't work on architectures that do not support shared libs"
.endif

MAINTAINER=	ian@OpenBSD.ORG

# build/configuration variables
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_ENV=		${SETENV} CPPFLAGS=-I/usr/local/include \
					LDFLAGS=-L/usr/local/lib

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ENVIRONMENT ${PREFIX}/share/kaffe

.include <bsd.port.mk>
