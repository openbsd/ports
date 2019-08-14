# $OpenBSD: Makefile,v 1.46 2019/08/14 05:59:50 bentley Exp $

COMMENT=		new MH mail handling program

DISTNAME=		nmh-1.7.1
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nmh/}
HOMEPAGE=		https://www.nongnu.org/nmh/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto curses edit iconv ssl

SYSCONFDIR=		${PREFIX}/lib
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--with-locking=fcntl \
			--with-readline \
			--with-tls \
			--without-oauth

LIB_DEPENDS =		converters/libiconv
# needed for replyfilter
RUN_DEPENDS=		mail/p5-MIME-tools \
			textproc/par \
			www/w3m

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SEPARATE_BUILD=		Yes

# much use of .fc
USE_GROFF =		Yes

.if ${FLAVOR:Msasl}
WANTLIB +=		sasl2
LIB_DEPENDS+=		security/cyrus-sasl2
CONFIGURE_ARGS+=	--with-cyrus-sasl
.else
CONFIGURE_ARGS+=	--without-cyrus-sasl
.endif

post-install:
	${INSTALL_SCRIPT} ${PREFIX}/share/doc/nmh/contrib/replyfilter \
		${PREFIX}/bin

.include <bsd.port.mk>
