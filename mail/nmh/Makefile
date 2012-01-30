# $OpenBSD: Makefile,v 1.32 2012/01/30 19:50:26 sthen Exp $

COMMENT=	new MH mail handling program

DISTNAME=		nmh-1.4
REVISION=		0
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nmh/}
HOMEPAGE=		http://www.nongnu.org/nmh/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c termcap

MAINTAINER=		William Yodlowsky <william@openbsd.org>

SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--enable-pop \
			--with-locking=fcntl

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV+=		ac_cv_header_db_h=no
USE_GMAKE=		Yes
USE_GROFF =		Yes

.if ${FLAVOR:L:Msasl}
MODULES +=		converters/libiconv
WANTLIB +=		sasl2
LIB_DEPENDS+=		security/cyrus-sasl2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-cyrus-sasl
.endif

NO_REGRESS=		Yes

.include <bsd.port.mk>
