# $OpenBSD: Makefile,v 1.3 2013/01/16 11:17:18 sthen Exp $

COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-1.13
REVISION=		0
CATEGORIES=		lang java

HOMEPAGE=		http://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		1.6+

VMEM_WARNING=		Yes

USE_GMAKE=		Yes
USE_GROFF=		Yes

WANTLIB += c ncurses readline

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-kawa-frontend
CONFIGURE_ENV=		JAVAC=${JAVA_HOME}/bin/javac \
			JAVA=${JAVA_HOME}/bin/java

.include <bsd.port.arch.mk>
# fails with this on i386, fails without this on amd64, unsure about
# other arch but lp64 is probably not a bad indicator.
.if ${PROPERTIES:Mlp64}
MAKE_ENV=		SLIB_JAVAFLAGS=-Xmx1200M
.else
MAKE_ENV=		SLIB_JAVAFLAGS=-Xmx800M
.endif

pre-patch:
	find ${WRKSRC} -type f | \
		xargs perl -pi -e 's,^JAR =.*,JAR = ${JAVA_HOME}/bin/jar,g'

.include <bsd.port.mk>
