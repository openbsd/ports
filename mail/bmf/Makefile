# $OpenBSD: Makefile,v 1.26 2015/08/25 11:16:12 sthen Exp $

COMMENT=		easy to use Bayesian spam filter
DISTNAME=		bmf-0.9.4
REVISION=		9
CATEGORIES=		mail
HOMEPAGE=		http://sourceforge.net/projects/bmf/

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bmf/}

CONFIGURE_STYLE=	simple

FLAVORS=		mysql
FLAVOR?=

CONFIGURE_ARGS=		--without-mysql \
			--with-libdb

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=		databases/mariadb
WANTLIB +=		mysqlclient pthread
CONFIGURE_ARGS+=	--without-libdb --with-mysql="${LOCALBASE}"
CFLAGS+=		"-I${LOCALBASE}/include/mysql"
.endif

MAKE_ENV=		CC="${CC}"
INSTALL_TARGET=		MANDIR=${PREFIX}/man \
			BINDIR=${PREFIX}/bin \
			install

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bmf

.include <bsd.port.mk>
