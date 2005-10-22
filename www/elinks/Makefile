# $OpenBSD: Makefile,v 1.3 2005/10/22 23:55:20 espie Exp $

COMMENT=		"full-featured text WWW browser"
DISTNAME=		elinks-0.10.5
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		www
MASTER_SITES=		http://elinks.or.cz/download/

HOMEPAGE=		http://elinks.or.cz/

MAINTAINER=		James Prevatt <jprevatt+bsd@paunix.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
BUILD_DEPENDS=		:automake-1.4.*:devel/automake/1.4
USE_GMAKE=		Yes

RUN_DEPENDS=		::devel/gettext
WANTLIB=		crypto c z ssl

FLAVORS=		gopher lua no_x11
FLAVOR?=		

.if ${FLAVOR:L:Mgopher}
CONFIGURE_ARGS+=	--enable-gopher
.endif

.if ${FLAVOR:L:Mlua}
LIB_DEPENDS+=		lua.5,lualib.5::lang/lua
WANTLIB+=		m
.else
CONFIGURE_ARGS+=	--without-lua
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=		Yes
WANTLIB+=		X11
.endif

post-patch:
	@cd ${WRKSRC} && automake-1.4 -a -c

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
