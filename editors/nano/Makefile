# $OpenBSD: Makefile,v 1.31 2003/02/20 18:21:33 naddy Exp $

COMMENT=	"small, easy to use editor"

DISTNAME=	nano-1.2.0
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	ftp://ftp.nano-editor.org/pub/nano/v1.2/ \
		${MASTER_SITE_GNU:=nano/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	slang
FLAVOR?=

MODULES=	gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib'
CONFIGURE_ARGS=		--enable-all
.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=		slang.14::devel/libslang
CONFIGURE_ARGS+=	--with-slang='${LOCALBASE}'
.endif

.include <bsd.port.mk>
