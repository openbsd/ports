# $OpenBSD: Makefile,v 1.11 2007/09/07 08:13:20 aanriot Exp $

COMMENT=		easy to use Bayesian spam filter
DISTNAME=		bmf-0.9.4
PKGNAME=		${DISTNAME}p1
CATEGORIES=		mail
HOMEPAGE=		http://sourceforge.net/projects/bmf

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bmf/}

CONFIGURE_STYLE=	simple

FLAVORS=		mysql
FLAVOR?=

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=		lib/mysql/mysqlclient.10:mysql-client-*:databases/mysql
CONFIGURE_ARGS=		--without-libdb --with-mysql="${LOCALBASE}"
CFLAGS+=		"-I${LOCALBASE}/include/mysql"
.else
CONFIGURE_ARGS=		--without-mysql --with-libdb
.endif

MAKE_ENV=		CC="${CC}"
INSTALL_TARGET=		MANDIR=${PREFIX}/man \
			BINDIR=${PREFIX}/bin \
			install

NO_REGRESS=		Yes

post-install:
	@for f in bmf bmfconv; do \
	    strip ${PREFIX}/bin/$$f; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bmf

.include <bsd.port.mk>

