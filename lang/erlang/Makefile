# $OpenBSD: Makefile,v 1.17 2006/03/07 19:30:36 sturm Exp $

COMMENT=	"Ericsson's high-level functional programming language"

DISTNAME=	otp_src_R10B-9
PKGNAME=	erlang-10B_9
CATEGORIES=     lang

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m ncurses pthread ssl

MASTER_SITES=	http://www.erlang.org/download/

CONFIGURE_ARGS=	--disable-jinterface	\
		--enable-threads 	\
		--enable-kernel-poll

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf

NO_REGRESS=	Yes

.include <bsd.port.mk>
