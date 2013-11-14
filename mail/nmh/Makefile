# $OpenBSD: Makefile,v 1.37 2013/11/14 07:36:27 bentley Exp $

COMMENT=		new MH mail handling program

DISTNAME=		nmh-1.5
REVISION =		1
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nmh/}
HOMEPAGE=		http://www.nongnu.org/nmh/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto edit ncurses ssl termcap

MAINTAINER=		William Yodlowsky <william@openbsd.org>

SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--enable-pop \
			--with-locking=fcntl \
			--with-readline \
			--with-tls
CONFIGURE_ENV=		LIBS="-lncurses"

# needed for replyfilter
RUN_DEPENDS=		mail/p5-MIME-tools \
			textproc/par

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV+=		ac_cv_header_db_h=no
USE_GROFF =		Yes

.if ${FLAVOR:Msasl}
MODULES +=		converters/libiconv
WANTLIB +=		sasl2
LIB_DEPENDS+=		security/cyrus-sasl2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-cyrus-sasl
.endif

NO_TEST=		Yes

post-install:
	${INSTALL_SCRIPT} ${PREFIX}/share/doc/nmh/contrib/replyfilter \
		${PREFIX}/bin

.include <bsd.port.mk>
