# $OpenBSD: Makefile,v 1.58 2005/10/30 00:10:42 fgsch Exp $
# $FreeBSD: Makefile,v 1.13 1999/03/01 16:18:30 mph Exp $

COMMENT=	"(E)nhanced (P)rogrammable (I)RC-II (C)lient"

VERSION=	2.2
HELP_DATE=	20050315
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-PRODUCTION/
DISTFILES=	epic4-${VERSION}.tar.bz2 epic4-help-${HELP_DATE}.tar.gz

HOMEPAGE=	http://www.epicsol.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ncurses ssl

SUBST_VARS=	VERSION

FAKE_FLAGS=	IP="${WRKINST}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu 
CONFIGURE_ARGS+= --program-transform-name=s,epic,epic4, \
		 --without-perl \
		 --without-tcl

INSTALL_TARGET=	install installhelp

NO_REGRESS=	Yes

DOCS=	README

post-extract:
	@mv -f ${WRKDIR}/help ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/epic4
	@cd ${PREFIX}/bin && mv -f epic4-EPIC4-${VERSION} epic4
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/epic4
	@find ${PREFIX}/share/epic4 -name 'CVS' -print0 | xargs -0 rm -rf

.include <bsd.port.mk>
