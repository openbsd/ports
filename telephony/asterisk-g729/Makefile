# $OpenBSD: Makefile,v 1.2 2011/09/16 11:41:40 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	G.729a voice codec for Asterisk
DISTNAME=	asterisk-g72x-1.1-beta2
REVISION=	0
PKGNAME=	asterisk-g729-1.1beta2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	telephony
MASTER_SITES=	http://asterisk.hosting.lv/src/

HOMEPAGE=	http://asterisk.hosting.lv/

# GPL frontend to patented algorithm; free to use for non-commercial purposes
PERMIT_DISTFILES_CDROM=	contains non-compiled proprietary Intel code
PERMIT_DISTFILES_FTP=	contains non-compiled proprietary Intel code
PERMIT_PACKAGE_CDROM=	patents	
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	telephony/asterisk>=1.8,<1.9
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-asterisk18 \
		--with-asterisk-includes=${LOCALBASE}/include \
		--with-itu

.include <bsd.port.mk>
