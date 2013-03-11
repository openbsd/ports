# $OpenBSD: Makefile,v 1.71 2013/03/11 11:35:46 espie Exp $

COMMENT=	(E)nhanced (P)rogrammable (I)RC-II (C)lient

VERSION=	2.10
HELP_DATE=	20050315
DISTNAME=	epic4-${VERSION}
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.epicsol.org/pub/epic/EPIC4-PRODUCTION/
DISTFILES=	epic4-${VERSION}.tar.bz2 epic4-help-${HELP_DATE}.tar.gz

HOMEPAGE=	http://www.epicsol.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ncurses ssl

DESTDIRNAME=	IP
FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=	gnu
# conflict between Perl embed headers and uvm_map's {max,min}_offset defines.
CONFIGURE_ENV=		ac_cv_header_sys_sysctl_h=no

CONFIGURE_ARGS=	--without-tcl \
		--enable-perl
WANTLIB+=       perl util

INSTALL_TARGET=	install installhelp

USE_GROFF =	Yes
NO_TEST=	Yes

SUBST_VARS=	VERSION

post-extract:
	@mv -f ${WRKDIR}/help ${WRKSRC}
	@find ${WRKSRC}/help -name CVS | xargs rm -rf

.include <bsd.port.mk>
