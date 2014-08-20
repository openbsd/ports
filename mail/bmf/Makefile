# $OpenBSD: Makefile,v 1.22 2014/08/20 06:34:16 ajacoutot Exp $

COMMENT=		easy to use Bayesian spam filter
DISTNAME=		bmf-0.9.4
REVISION=		5
CATEGORIES=		mail
HOMEPAGE=		http://sourceforge.net/projects/bmf/

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

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
LIB_DEPENDS+=		databases/mysql
WANTLIB +=		mysqlclient
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
