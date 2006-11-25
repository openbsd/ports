# $OpenBSD: Makefile,v 1.66 2006/11/25 17:33:08 espie Exp $

COMMENT-main=	"program for Internet E-mail and News"
COMMENT-pico=	"small text editor"
COMMENT-pilot=	"file system browser"

CATEGORIES=		mail news
CATEGORIES-pico=	editors
CATEGORIES-pilot=	sysutils

VERSION=	4.64
PICO_VERSION=	4.10
PILOT_VERSION=	2.0

DISTNAME=	pine${VERSION}
PKGNAME-main=	pine-${VERSION}p2
PKGNAME-pico=	pico-${PICO_VERSION}
PKGNAME-pilot=	pilot-${PILOT_VERSION}

MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

FLAVORS=	kerberos ldap
FLAVOR?=

BASE_PKGPATH=	${PGKPATH}${FLAVOR_EXT:S/-/,/g}

SUBST_VARS=	BASE_PKGPATH

MULTI_PACKAGES=	-main -pico -pilot

WANTLIB-main=	${WANTLIB} crypto ssl termlib
WANTLIB-pico=	${WANTLIB} termcap
WANTLIB-pilot=	${WANTLIB} termcap

PINE_BUILD_FLAGS=	CC="${CC}" EXTRACFLAGS="${CFLAGS}" \
			SSLTYPE="unix" LOCALBASE="${LOCALBASE}"

.if ${FLAVOR:L:Mkerberos}
PINE_BUILD_FLAGS+=	EXTRAAUTHENTICATORS="gss"
WANTLIB+=		asn1 com_err des gssapi krb5
.endif

.if ${FLAVOR:L:Mldap}
PINE_BUILD_FLAGS+=	LDAPLIBS="-L${LOCALBASE}/lib -lldap -llber" \
			LDAPCFLAGS="-DENABLE_LDAP -I${LOCALBASE}/include"
LIB_DEPENDS-main=	lber.2,ldap.2:openldap-client-2.*:databases/openldap
.endif

do-build:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/doc/tech-notes.txt > ${WRKSRC}/doc/tech-notes.txt.new
	@mv ${WRKSRC}/doc/tech-notes.txt.new ${WRKSRC}/doc/tech-notes.txt
	@cd ${WRKSRC}; ./build ${PINE_BUILD_FLAGS} bso

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine rpdump rpload \
		${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 rpdump.1 rpload.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
