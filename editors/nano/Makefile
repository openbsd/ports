# $OpenBSD: Makefile,v 1.16 2001/03/24 19:52:29 naddy Exp $

COMMENT=	"small, easy to use editor"
DISTNAME=	nano-1.0.0
CATEGORIES=	editors
NEED_VERSION=	1.363
HOMEPAGE=	http://www.nano-editor.org

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		${MASTER_SITE_GNU} \
		ftp://ftp.nano-editor.org/pub/nano/
MASTER_SITE_SUBDIR=	nano

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
