# $OpenBSD: Makefile,v 1.23 2005/02/19 22:25:48 alek Exp $

V=		0.62.4
DISTNAME=	freetds-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses readline

COMMENT=	"project to document and implement the TDS protocol"
HOMEPAGE=	http://www.freetds.org/
MASTER_SITES=	http://ibiblio.org/pub/Linux/ALPHA/freetds/stable/

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--with-libiconv-prefix="${LOCALBASE}" \
		--disable-threadsafe \
		--disable-odbc
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
