# $OpenBSD: Makefile,v 1.68 2007/01/05 18:34:49 ajacoutot Exp $

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
PKGNAME-main=	pine-${VERSION}p4
PKGNAME-pico=	pico-${PICO_VERSION}p0
PKGNAME-pilot=	pilot-${PILOT_VERSION}p0

MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

FLAVORS=	ldap
FLAVOR?=

MULTI_PACKAGES=	-main -pico -pilot

WANTLIB-main=	${WANTLIB} crypto ssl termlib asn1 com_err des gssapi krb5
WANTLIB-pico=	${WANTLIB} termcap
WANTLIB-pilot=	${WANTLIB} termcap

PINE_BUILD_FLAGS=	CC="${CC}" EXTRACFLAGS="${CFLAGS}" \
			SSLTYPE="unix" LOCALBASE="${LOCALBASE}" \
			EXTRAAUTHENTICATORS="gss"

.if ${FLAVOR:L:Mldap}
PINE_BUILD_FLAGS+=	LDAPLIBS="-L${LOCALBASE}/lib -lldap -llber" \
			LDAPCFLAGS="-DENABLE_LDAP -I${LOCALBASE}/include"
LIB_DEPENDS-main=	lber.>=2,ldap.>=2:openldap-client-2.*:databases/openldap
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
