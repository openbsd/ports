# $OpenBSD: Makefile,v 1.7 2000/09/23 12:38:21 naddy Exp $

DISTNAME=	nano-0.9.18
CATEGORIES=	editors
NEED_VERSION=	1.333
HOMEPAGE=	http://www.asty.org/nano/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		ftp://ftp.asty.org/pub/nano/
MASTER_SITE_SUBDIR=	nano

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	slang
FLAVOR?=

LIB_DEPENDS=	intl.1::devel/gettext
.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14.2::devel/libslang
.endif

CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
.if ${FLAVOR:L:Mslang}
CONFIGURE_ARGS+=	--with-slang='${LOCALBASE}'
.endif

.include <bsd.port.mk>
