# $OpenBSD: Makefile,v 1.6 2014/01/27 14:12:29 ajacoutot Exp $

COMMENT=	Linux CUPS package based on Fedora Core ${FEDORA_V}

PKGNAME=	fedora_cups-${FEDORA_V}.0
REVISION=	1

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

RPMS=		audit-libs-1.7.13-1.fc10.i386.rpm:0 \
		cups-libs-1.3.11-4.fc10.i386.rpm:0 \
		gnutls-2.4.2-5.fc10.i386.rpm:0 \
		krb5-libs-1.6.3-18.fc10.i386.rpm:0 \
		libgcrypt-1.4.4-1.fc10.i386.rpm:0 \
		libgpg-error-1.6-2.i386.rpm \
		libtasn1-1.5-1.fc10.i386.rpm

REMOVE_DIRS=	usr/kerberos usr/share/man usr/share/doc

.include <bsd.port.mk>
