# $OpenBSD: Makefile,v 1.35 2002/05/13 02:36:24 form Exp $

COMMENT=		"MS-DOS Telix-like serial communication program"

DISTNAME=		${PKGNAME}.src
PKGNAME=		minicom-2.00.0
CATEGORIES=		comms
NEED_VERSION=		1.528
MASTER_SITES=		${MASTER_SITE_SUNSITE:=apps/serialcomm/dialout/}

HOMEPAGE=		http://www.pp.clinet.fi/~walker/minicom.html

MODULES=		gettext
RUN_DEPENDS=		::comms/kermit \
			::comms/lrzsz

MAINTAINER=     	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

COPTS=			-DHAS_EUID
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-cfg-dir=${SYSCONFDIR}/minicom \
			--enable-lock-dir=/var/spool/lock

post-patch:
	@perl -pi -e "s@/usr/local/bin/@${LOCALBASE}/bin/@g;s@/sz@/lsz@g; \
		s@/sb@/lsb@g;s@/sx@/lsx@g;s@/rz@/lrz@g;s@/rb@/lrb@g; \
		s@/rx@/lrx@g" ${WRKSRC}/src/rwconf.c


post-install:
	@chown uucp:dialer ${PREFIX}/bin/minicom
	@chmod 4111 ${PREFIX}/bin/minicom
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/minicom
	${INSTALL_DATA} ${WRKDIST}/doc/minicom.users \
		${PREFIX}/share/examples/minicom/minicom.users.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/minicom
	@rm ${PREFIX}/share/doc/minicom/Makefile*
	${INSTALL_DATA} ${WRKDIST}/AUTHORS ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/COPYING ${PREFIX}/share/doc/minicom
	${INSTALL_DATA} ${WRKDIST}/ChangeLog ${PREFIX}/share/doc/minicom
	@(umask 022; cp -RP ${WRKDIST}/extras ${PREFIX}/share/examples/minicom)
	@find ${PREFIX}/share/examples/minicom -name Makefile\* \
		-exec rm -f {} \;

.include <bsd.port.mk>
