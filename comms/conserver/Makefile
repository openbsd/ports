# $OpenBSD: Makefile,v 1.14 2000/12/14 13:22:59 espie Exp $

PKGNAME=	conserver-5.21
DISTFILES=	conserver-5.21-Beta.shar.gz
CATEGORIES=	comms
NEED_VERSION=	1.342

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.uu.net/vendor/bitsko/config-mgmt/ \
		ftp://unix.hensa.ac.uk/mirrors/uunet/vendor/bitsko/config-mgmt/
WRKDIST=	${WRKDIR}

# Set this to where you want console(8) to connect to by default
# or use something like ``make DEFAULTHOST=myserver.mydomain.net''
DEFAULTHOST?=	localhost
MAKE_ENV+=	DEFAULTHOST="${DEFAULTHOST}"

post-extract:
	cp ${FILESDIR}/Makefile ${WRKSRC}

post-install:
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/examples/conserver

.include <bsd.port.mk>
