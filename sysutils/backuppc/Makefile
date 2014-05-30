# $OpenBSD: Makefile,v 1.8 2014/05/30 13:14:08 sthen Exp $

COMMENT =	remote backup software system

DISTNAME =	BackupPC-3.3.0
REVISION =	0
PKGNAME =	${DISTNAME:L}

CATEGORIES =	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	http://backuppc.sourceforge.net

#ftp: Too many redirections requested
#MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=BackupPC/}
MASTER_SITES=	http://freefr.dl.sourceforge.net/project/backuppc/backuppc/3.3.0/

NO_BUILD =	Yes

# XXX one of them needed as runtime dep... buildep to get them found by configure
BUILD_DEPENDS = archivers/gtar \
		net/samba \
		net/rsync \
		devel/p5-File-RsyncP

RUN_DEPENDS =	textproc/p5-XML-RSS \
		devel/p5-File-RsyncP \
		archivers/p5-Archive-Zip \
		www/p5-libwww \
		www/spawn-fcgi \
		www/mod_fastcgi

do-install:
	cd ${WRKSRC} && perl ./configure.pl \
		--html-dir ${TRUEPREFIX}/share/backuppc \
		--html-dir-url /backuppc \
		--cgi-dir ${TRUEPREFIX}/bin \
		--data-dir /var/db/backuppc \
		--log-dir /var/log/backuppc \
		--config-dir ${SYSCONFDIR}/backuppc \
		--install-dir ${TRUEPREFIX} \
		--dest-dir ${WRKINST} \
		--hostname example.com \
		--uid-ignore \
		--no-set-perms \
		--batch \
		-backuppc-user=_backuppc
	# needed since we use --no-set-perms
	chmod 555 ${PREFIX}/bin/*
	# add extension for the sake of clarity
	cd ${PREFIX}/bin/ && ln -sf BackupPC_Admin{,.fcgi}
	${INSTALL_DATA} ${FILESDIR}/httpd-backuppc.conf ${PREFIX}/share/examples/backuppc/

.include <bsd.port.mk>
