# $OpenBSD: Makefile,v 1.9 2000/12/09 05:19:29 obecian Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	cops.1.04
PKGNAME=	cops-1.04
CATEGORIES=	security
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES= ftp://ftp.cerias.purdue.edu/pub/tools/unix/scanners/cops/

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXECUTABLE = home.chk user.chk is_writable crc crc_check \
             addto clearfiles filewriters members tilde is_able
C_SRC      = home.chk.c user.chk.c is_able.c is_something.c \
             addto.c clearfiles.c filewriters.c members.c tilde.c \
             crc.c crc_check.c

WRKDIST=        ${WRKDIR}/cops_104

pre-build:
	(cd ${WRKSRC} ; ./reconfig)
	(cd ${WRKSRC} ; \
	sed 's,^SECURE=/usr/foo/bar,SECURE=${PREFIX}/cops,g' < cops | sed '/^$$SECURE\/passwd\.chk.*/d' | sed 's,SECURE_USERS="foo@bar\.edu",SECURE_USERS="root@localhost",g' | sed 's/passwd\.chk pass.chk //g' > cops.out ; \
	mv cops.out cops ; chmod u+x cops)

do-build:
	(cd ${WRKSRC} ; make EXECUTABLE="${EXECUTABLE}" C_SRC="${C_SRC}")

do-install:
	(cd ${WRKDIR} ; rm -rf ${PREFIX}/cops ; mkdir -p ${PREFIX}/cops ; \
	cp -R ${WRKSRC}/* ${PREFIX}/cops ; \
	chmod -R go-rwx ${PREFIX}/cops ; \
	rm -rf ${PREFIX}/cops/*.old ${PREFIX}/cops/src)

.include <bsd.port.mk>
