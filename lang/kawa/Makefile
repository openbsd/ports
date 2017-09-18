# $OpenBSD: Makefile,v 1.13 2017/09/18 11:48:57 jasper Exp $

BROKEN-i386= java

COMMENT=		Scheme and language framework for the Java platform

DISTNAME=		kawa-2.4
CATEGORIES=		lang java

HOMEPAGE=		https://www.gnu.org/software/kawa/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		${MASTER_SITE_GNU:=kawa/}

MODULES=		java
MODJAVA_VER=		1.8+

TEST_DEPENDS=		${RUN_DEPENDS}

USE_GMAKE=		Yes

WANTLIB+=		c ncurses readline
BUILD_DEPENDS=		print/texinfo \
			devel/autoconf/2.69 \
			devel/automake/1.15
			
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-kawa-frontend
CONFIGURE_ENV+=		AUTOMAKE=${LOCALBASE}/bin/automake-1.15 \
			AUTOCONF=${LOCALBASE}/bin/autoconf-2.69


MAKE_FLAGS=		JAVAC=${JAVA_HOME}/bin/javac \
			JAVA=${JAVA_HOME}/bin/java \
			MAKEINFO=${LOCALBASE}/bin/gmakeinfo \
			AUTOCONF_VERSION=2.69
			
.include <bsd.port.arch.mk>
# fails with this on i386, fails without this on amd64, unsure about
# other arch but lp64 is probably not a bad indicator.
.if ${PROPERTIES:Mlp64}
MAKE_ENV+=		SLIB_JAVAFLAGS=-Xmx1200M
.else
MAKE_ENV+=		SLIB_JAVAFLAGS=-Xmx800M
.endif

# use UTF-8 encoding to avoid following errors:
# unmappable character for encoding ASCII
MAKE_ENV+=		LANG=en_US.UTF-8

TEST_FLAGS =		DIFF=diff \
			PATH=${PATH}:${JAVA_HOME}/bin

pre-patch:
	find ${WRKSRC} -type f | \
		xargs sed -i 's,^JAR =.*,JAR = ${JAVA_HOME}/bin/jar,g'

.include <bsd.port.mk>
