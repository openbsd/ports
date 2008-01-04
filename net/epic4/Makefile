# $OpenBSD: Makefile,v 1.62 2008/01/04 17:48:36 espie Exp $

COMMENT=	(E)nhanced (P)rogrammable (I)RC-II (C)lient

VERSION=	2.6
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

WANTLIB=	c crypto m ncurses ssl

DESTDIRNAME=	IP
FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu 
CONFIGURE_ARGS=	--without-perl \
		--without-tcl

INSTALL_TARGET=	install installhelp

NO_REGRESS=	Yes

post-extract:
	@mv -f ${WRKDIR}/help ${WRKSRC}
	@find ${WRKSRC}/help -name CVS | xargs rm -rf

.include <bsd.port.mk>
