# $OpenBSD: Makefile,v 1.10 2009/06/20 22:05:11 avsm Exp $

SHARED_ONLY=		Yes

# This architecture lacks fast mutexes...
NOT_FOR_ARCHS=		mips64

COMMENT=		source code search engine
DISTNAME=		gonzui-1.2
PKGNAME=		${DISTNAME}p7
CATEGORIES=		textproc www

HOMEPAGE=		http://gonzui.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MODULES=		lang/ruby lang/ocaml

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gonzui/}

BUILD_DEPENDS=		::databases/db/v4 \
			::databases/ruby-bdb \
			:ruby-iconv->=1.8.4:lang/ruby,-iconv
RUN_DEPENDS=		::archivers/bzip2 \
			::archivers/unzip \
			::textproc/p5-PPI

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-user="_gonzui" \
			--with-group="_gonzui" \
			--with-rundir="/var/run/gonzui" \
			--with-logdir="/var/log" \
			--localstatedir="/var"

# Tests want to do cvs checkouts, apt-get, etc.
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gonzui/
	${INSTALL_DATA} ${WRKSRC}/gonzuirc.sample \
		${PREFIX}/share/examples/gonzui/

.include <bsd.port.mk>
