# $OpenBSD: Makefile,v 1.20 2001/08/25 15:48:40 naddy Exp $

COMMENT=	"small, easy to use editor"

DISTNAME=	nano-1.0.4
CATEGORIES=	editors
NEED_VERSION=	1.363
HOMEPAGE=	http://www.nano-editor.org

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		${MASTER_SITE_GNU} \
		ftp://ftp.nano-editor.org/pub/nano/
MASTER_SITE_SUBDIR=	nano

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	slang
FLAVOR?=

LIB_DEPENDS=	intl.1::devel/gettext
.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14::devel/libslang
.endif

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib'
.if ${FLAVOR:L:Mslang}
CONFIGURE_ARGS+=	--with-slang='${LOCALBASE}'
.endif

.include <bsd.port.mk>
