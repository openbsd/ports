# $OpenBSD: Makefile,v 1.9 2000/04/09 17:36:05 espie Exp $

DISTNAME=	conserver-5.21-Beta
PKGNAME=	conserver-5.21
CATEGORIES=	comms
NEED_VERSION=	1.191
FAKE=No

# If you want to distribute a package you must heed this part of
# the copyright:
#	distributions including binaries display the following
#	acknowledgement:  ``This product includes software
#	developed by The Ohio State University and its contributors''
#	in the documentation or other materials provided with the
#	distribution and in all advertising materials mentioning
#	features or use of this software. 
NO_PACKAGE=	"binary distribution requires explicit acknowledgement"

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.uu.net/vendor/bitsko/config-mgmt/ \
		ftp://unix.hensa.ac.uk/mirrors/uunet/vendor/bitsko/config-mgmt/
WRKDIST=	${WRKDIR}
EXTRACT_SUFX=	.shar.gz
EXTRACT_CMD=	zcat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

NO_CONFIGURE=	yes

# Set this to where you want console(8) to connect to by default
# or use something like ``make DEFAULTHOST=myserver.mydomain.net''
DEFAULTHOST?=	localhost
MAKE_ENV+=	DEFAULTHOST="${DEFAULTHOST}"

post-extract:
	cp ${FILESDIR}/Makefile ${WRKSRC}

post-install:
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/examples/conserver
	more ${FILESDIR}/README.OpenBSD

.include <bsd.port.mk>
