# $OpenBSD: Makefile,v 1.24 2005/03/30 03:39:00 jcs Exp $

V=		0.63
DISTNAME=	freetds-$V
CATEGORIES=	databases

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
