# $OpenBSD: Makefile,v 1.3 2012/10/11 10:16:29 robert Exp $

COMMENT=	Linux CUPS package based on Fedora Core 10

PKGNAME=	fedora_cups-10.0

MASTER_SITES=	${MASTER_SITE_FEDORA0:=10/Fedora/i386/os/Packages/}

SHARED_LIBS +=  des425                    3.0
SHARED_LIBS +=  gssapi_krb5               2.2
SHARED_LIBS +=  gssrpc                    4.0
SHARED_LIBS +=  k5crypto                  3.1
SHARED_LIBS +=  kadm5clnt                 5.1
SHARED_LIBS +=  kadm5srv                  5.1
SHARED_LIBS +=  kdb5                      4.0
SHARED_LIBS +=  krb4                      2.0
SHARED_LIBS +=  krb5                      3.3
SHARED_LIBS +=  krb5support               0.1

RUN_DEPENDS=	emulators/fedora/base

DISTFILES=	${RPMS}

RPMDIR=		${FULLDISTDIR}

RPMS=		audit-libs-1.7.8-6.fc10.i386.rpm \
		cups-libs-1.3.9-2.fc10.i386.rpm \
		gnutls-2.4.2-2.fc10.i386.rpm \
		krb5-libs-1.6.3-16.fc10.i386.rpm \
		libgcrypt-1.4.3-2.fc10.i386.rpm \
		libgpg-error-1.6-2.i386.rpm \
		libtasn1-1.5-1.fc10.i386.rpm

REMOVE_DIRS=	usr/kerberos usr/share/man usr/share/doc

do-install:
	${INSTALL_DATA_DIR} ${FEDORADIR}
.for rpm in ${RPMS:S/:0//}
	cd ${FEDORADIR}; rpm2cpio ${RPMDIR}/${rpm} | ${LOCALBASE}/bin/gcpio -id
.endfor

# get rid of some unnecessary directories
.for D in ${REMOVE_DIRS}
	rm -rf ${FEDORADIR}/${D}
.endfor

# better safe than sorry
	find ${FEDORADIR} -perm -4000 | xargs -r chmod u-s
	find ${FEDORADIR} \( -user 37 -o -user 5041 -o -group 37 \) -print | \
		xargs -r chown -h root:wheel

.include <bsd.port.mk>
