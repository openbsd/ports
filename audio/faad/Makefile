# $OpenBSD: Makefile,v 1.13 2004/11/21 17:51:44 espie Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"
DISTNAME=	faad2-2.0
PKGNAME=	faad-2.0
CATEGORIES=    	audio
MASTER_SITES=	http://users.codefusionis.com/~jolan/

HOMEPAGE=	http://faac.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	"Patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Patents"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ARGS+=--with-mp4v2

post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		PATH=${PORTPATH} sh bootstrap
	@perl -pi -e 's/--no-verify//g' ${WRKSRC}/configure

.include <bsd.port.mk>
