# $OpenBSD: Makefile,v 1.6 2006/02/15 05:14:30 david Exp $

COMMENT=		"daemontools alike replacement for init"

DISTNAME=		runit-1.2.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils

HOMEPAGE=		http://www.smarden.org/runit/

MAINTAINER=		Lars Hansson <lars@unet.net.ph>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		${HOMEPAGE}
WRKDIST=		${WRKDIR}/admin/${DISTNAME}
WRKSRC=			${WRKDIST}/src
SBINPROGRAMS=		runit runit-init runsvdir runsvchdir runsv \
			runsvctrl runsvstat svlogd utmpset svwaitdown \
			svwaitup chpst
MANPAGES=		chpst.8 runit.8 runsvchdir.8 runsvdir.8 svlogd.8 \
			svwaitup.8 runit-init.8 runsv.8 runsvctrl.8 \
			runsvstat.8 svwaitdown.8 utmpset.8
DOCS1=			benefits.html replaceinit.html runsvchdir.8.html \
			svwaitup.8.html chpst.8.html runit-init.8.html \
			runsvctrl.8.html upgrade.html runit.8.html \
			runsvdir.8.html dependencies.html runlevels.html \
			runsvstat.8.html useinit.html index.html \
			runscripts.html svlogd.8.html utmpset.8.html \
			install.html runsv.8.html svwaitdown.8.html
DOCS2=			CHANGES README COPYING THANKS
EXAMPLES=		etc/2 etc/openbsd/1 etc/openbsd/3 etc/openbsd/ctrlaltdel

pre-build:
	echo "${CC} ${CFLAGS} ${COPTS}" > ${WRKSRC}/conf-cc
	echo "${CC} ${LDFLAGS}" > ${WRKSRC}/conf-ld

do-build:
	cd ${WRKDIST} && package/compile

do-regress:
	cd ${WRKDIST}/compile && make check

do-install:
.for pgm in ${SBINPROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/command/${pgm} ${PREFIX}/sbin/
.endfor
	${INSTALL_SCRIPT} files/runsvdir-start ${PREFIX}/sbin/
.for page in ${MANPAGES}
	${INSTALL_MAN} ${WRKDIST}/man/${page} ${PREFIX}/man/man8
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/runit
.for doc in ${DOCS1}
	${INSTALL_DATA} ${WRKDIST}/doc/${doc} ${PREFIX}/share/doc/runit/
.endfor
.for doc in ${DOCS2}
	${INSTALL_DATA} ${WRKDIST}/package/${doc} ${PREFIX}/share/doc/runit/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/runit
	${INSTALL_DATA} ${FILESDIR}/rc.shutdown ${PREFIX}/share/examples/runit/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/runit/init
.for file in ${EXAMPLES}
	${INSTALL_DATA} ${WRKDIST}/${file} ${PREFIX}/share/examples/runit/init/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/runit/init/getty-ttyC4
	${INSTALL_DATA} ${WRKDIST}/etc/openbsd/getty-ttyC4/run \
		${PREFIX}/share/examples/runit/init/getty-ttyC4/run
	${INSTALL_DATA} ${WRKDIST}/etc/openbsd/getty-ttyC4/finish \
		${PREFIX}/share/examples/runit/init/getty-ttyC4/finish

.include <bsd.port.mk>
