# $OpenBSD: Makefile,v 1.5 1998/12/24 03:37:10 ian Exp $
#
# Relevant URLs:	http://www.transvirtual.com/kaffe/

DISTNAME=       kaffe-1.0.b3
CATEGORIES=	lang

MASTER_SITES=	ftp://ftp.transvirtual.com/pub/kaffe/

LIB_DEPENDS=	jpeg.62.:${PORTSDIR}/graphics/jpeg \
			png.1.:${PORTSDIR}/graphics/png

MAINTAINER=	ian@OpenBSD.ORG

# build/configuration variables
GNU_CONFIGURE=		yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif

CONFIGURE_ENV=		${SETENV} CPPFLAGS=-I/usr/local/include \
					LDFLAGS=-L/usr/local/lib

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ENVIRONMENT ${PREFIX}/share/kaffe

.include <bsd.port.mk>
