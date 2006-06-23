# $OpenBSD: Makefile,v 1.3 2006/06/23 06:02:58 steven Exp $

COMES_WITH=	3.9

COMMENT=	"scan for and send signals to processes"

VERSION=	0.3
DISTNAME=	proctools-${VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/proctools

MAINTAINER=	James Devenish <j-devenish@users.sourceforge.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=proctools/}

NO_REGRESS=	yes

post-patch:
	@cp ${FILESDIR}/fmt.c ${WRKBUILD}/pgrep

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/pgrep/pgrep ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/pkill/pkill ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/pgrep/pgrep.cat1 ${PREFIX}/man/cat1/pgrep.0
	${INSTALL_MAN} ${WRKBUILD}/pkill/pkill.cat1 ${PREFIX}/man/cat1/pkill.0

.include <bsd.port.mk>
