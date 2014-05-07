# $OpenBSD: Makefile,v 1.7 2014/05/07 15:42:16 kurt Exp $

BROKEN-i386= java

COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-1.13
REVISION=		2
CATEGORIES=		lang java

HOMEPAGE=		https://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		1.6+

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
