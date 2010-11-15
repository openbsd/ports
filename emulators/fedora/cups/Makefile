# $OpenBSD: Makefile,v 1.2 2010/11/15 23:22:08 espie Exp $

COMMENT=	Linux CUPS package based on Fedora Core 4

PKGNAME=	fedora_cups-4.0
# clean up after make plist:
#	- perl -pi -e "s,^\@lib ,," pkg/PLIST

SHARED_LIBS=	com_err	2.1 \
		gssapi_krb5 2.2 \
		k5crypto 3.0 \
		krb5	3.2 \
		krb5support 0.0

MASTER_SITES=	${MASTER_SITE_FEDORA:=4/i386/os/Fedora/RPMS/}
MASTER_SITES0=	${MASTER_SITE_FEDORA:=updates/4/i386/}

RUN_DEPENDS=	emulators/fedora/base

DISTFILES=	${RPMS}

RPMDIR=		${FULLDISTDIR}

RPMS=		cups-libs-1.1.23-15.4.i386.rpm:0 \
		e2fsprogs-1.37-4.i386.rpm \
		krb5-libs-1.4-3.i386.rpm \
		openssl-0.9.7f-7.10.i386.rpm:0 \

REMOVE_DIRS=	/usr/share/doc /usr/share/man etc/pki usr/kerberos
REMOVE_FILES=	sbin/*e2* sbin/*fs sbin/*ext[23]* \
		usr/sbin/ext2online usr/bin/*attr usr/bin/uuidgen \
		usr/sbin/filefrag usr/sbin/mklost+found sbin/badblocks \
		sbin/blkid sbin/fsck sbin/logsave \
		usr/share/locale/*/LC_MESSAGES/e2fsprogs.mo \
		${REMOVE_LIB:=lib/%} ${REMOVE_USRLIB:=usr/lib/%}
REMOVE_LIB=	libuuid* libss.so* libe2p* libblkid* libext2fs*
REMOVE_USRLIB=	libdes425* libgssrpc* libkrb4* libkdb5* libkadm5*

do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}
.for rpm in ${RPMS:S/:0//}
	cd ${FEDORADIR}; rpm2cpio ${RPMDIR}/${rpm} | cpio -id
.endfor

# get rid of some unnecessary files and directories
.for D in ${REMOVE_DIRS}
	rm -rf ${FEDORADIR}/${D}
.endfor
.for F in ${REMOVE_FILES}
	rm -f ${FEDORADIR}/${F}
.endfor

# better safe than sorry
	find ${FEDORADIR} -perm -4000 | xargs -r chmod u-s
	find ${FEDORADIR} \( -user 37 -o -user 5041 -o -group 37 \) -print | \
		xargs -r chown -h root:wheel

.include <bsd.port.mk>
