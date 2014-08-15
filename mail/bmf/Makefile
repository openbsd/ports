# $OpenBSD: Makefile,v 1.21 2014/08/15 00:50:22 jturner Exp $

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

.if ${FLAVOR:Mmysql}
LIB_DEPENDS+=		databases/mysql
WANTLIB +=		lib/mysql/mysqclient>=10
CONFIGURE_ARGS=		--without-libdb --with-mysql="${LOCALBASE}"
CFLAGS+=		"-I${LOCALBASE}/include/mysql"
.else
CONFIGURE_ARGS=		--without-mysql --with-libdb
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
