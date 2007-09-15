# $OpenBSD: Makefile,v 1.19 2007/09/15 23:29:58 merdely Exp $

COMMENT=	system secureness checker

DISTNAME=	cops.1.04
PKGNAME=	cops-1.04p0
CATEGORIES=	security

MASTER_SITES=	ftp://ftp.cerias.purdue.edu/pub/tools/unix/scanners/cops/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

EXECUTABLE = home.chk user.chk is_writable crc crc_check \
             addto clearfiles filewriters members tilde is_able
C_SRC      = home.chk.c user.chk.c is_able.c is_something.c \
             addto.c clearfiles.c filewriters.c members.c tilde.c \
             crc.c crc_check.c

WRKDIST=        ${WRKDIR}/cops_104

pre-build:
	cd ${WRKSRC} && ./reconfig
	cd ${WRKSRC} && \
	sed -e 's,^SECURE=.*,SECURE=${PREFIX}/cops,g' -e '/^$$SECURE\/passwd\.chk.*/d' -e 's,^SECURE_USERS=.*,SECURE_USERS="root@localhost",g' -e 's/passwd\.chk pass.chk //g' cops > cops.out && \
	mv cops.out cops && chmod u+x cops

MAKE_FILE=	makefile
MAKE_FLAGS=	EXECUTABLE="${EXECUTABLE}" C_SRC="${C_SRC}" \
		CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	rm -rf ${PREFIX}/cops 
	mkdir -p ${PREFIX}/cops
	cp -R ${WRKSRC}/* ${PREFIX}/cops
	chmod -R go-rwx ${PREFIX}/cops
	rm -rf ${PREFIX}/cops/*.{old,orig} ${PREFIX}/cops/src \
		${PREFIX}/cops/docs/{*.ms,makefile*}
	# move man pages to correct place
	for i in ${PREFIX}/cops/docs/*.1; do \
		j=`basename $$i .1`; \
		${INSTALL_MAN} $$i ${PREFIX}/man/cat1/$$j.0; \
		rm -f ${PREFIX}/cops/docs/$$j $$i; \
	done

.include <bsd.port.mk>
