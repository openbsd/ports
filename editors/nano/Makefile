# $OpenBSD: Makefile,v 1.22 2001/10/25 02:11:10 brad Exp $

COMMENT=	"small, easy to use editor"

DISTNAME=	nano-1.0.5
CATEGORIES=	editors
NEED_VERSION=	1.474
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

MODULES=	gettext

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib'
.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=		slang.14::devel/libslang
CONFIGURE_ARGS+=	--with-slang='${LOCALBASE}'
.endif

.include <bsd.port.mk>
