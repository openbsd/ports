# $OpenBSD: Makefile,v 1.28 2006/10/28 11:19:20 espie Exp $

V=		0.63
DISTNAME=	freetds-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases
SHARED_LIBS +=	tds                  4.0      # .4.0
SHARED_LIBS +=	ct                   3.0      # .3.0
SHARED_LIBS +=	sybdb                5.0      # .5.0
SHARED_LIBS +=	tdssrv               2.0      # .2.0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses readline

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/ALPHA/freetds/stable/

MAINTAINER=	joshua stein <jcs@openbsd.org>

FLAVORS=	msdblib
FLAVOR?=

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}" \
		--disable-threadsafe \
		--disable-odbc

.if $(FLAVOR:L:Mmsdblib)
CONFIGURE_ARGS+=--enable-msdblib
.endif

MAKE_ENV=	RM=rm
MODULES=	converters/libiconv
DOC=		share/doc/freetds-$V
SUBST_VARS=	DOC V

post-install:
	@sed -e "s:@sysconfdir@:${SYSCONFDIR}:g" ${WRKSRC}/freetds.conf > \
		${WRKSRC}/freetds.conf.new
	@mkdir ${PREFIX}/share/examples/freetds
	${INSTALL_DATA} ${WRKSRC}/freetds.conf.new \
		${PREFIX}/share/examples/freetds/freetds.conf-sample
	${INSTALL_DATA} ${WRKSRC}/src/pool/pool.conf \
		${PREFIX}/share/examples/freetds/pool.conf-sample

.include <bsd.port.mk>
