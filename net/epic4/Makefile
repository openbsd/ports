# $OpenBSD: Makefile,v 1.73 2014/09/13 14:05:24 brad Exp $

COMMENT=	(E)nhanced (P)rogrammable (I)RC-II (C)lient

VERSION=	2.10.5
HELP_DATE=	20050315
DISTNAME=	epic4-${VERSION}
CATEGORIES=	net
MASTER_SITES=	http://ftp.epicsol.org/pub/epic/EPIC4-PRODUCTION/
DISTFILES=	epic4-${VERSION}.tar.bz2 epic4-help-${HELP_DATE}.tar.bz2

HOMEPAGE=	http://www.epicsol.org/

MAINTAINER=	Adam Jeanguenat <avj@6v6.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ncurses perl ssl util

FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-tcl \
		--enable-perl
# conflict between Perl embed headers and uvm_map's {max,min}_offset defines.
CONFIGURE_ENV=	ac_cv_header_sys_sysctl_h=no

INSTALL_TARGET=	install installhelp

NO_TEST=	Yes

SUBST_VARS=	VERSION

post-extract:
	@mv -f ${WRKDIR}/help ${WRKSRC}
	@find ${WRKSRC}/help -name CVS | xargs rm -rf

.include <bsd.port.mk>
