# $OpenBSD: Makefile,v 1.75 2019/07/12 20:47:29 sthen Exp $

COMMENT-main=		mail delivery agent with filtering abilities
COMMENT-utils=		quota tools for the Courier mail suite

V=			3.0.0
DISTNAME=		maildrop-$V
PKGNAME-main=		maildrop-$V
FULLPKGNAME-utils=	courier-utils-$V
FULLPKGPATH-utils=	mail/maildrop,-utils
CATEGORIES=		mail

HOMEPAGE=		http://www.courier-mta.org/maildrop/
MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		postfix no_trashquota
FLAVOR?=

MULTI_PACKAGES=		-main -utils

# GPLv3
PERMIT_PACKAGE=	Yes

COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.69

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include" \
			ac_cv_header_fam_h=no \
			ac_cv_lib_fam_FAMOpen=no \
			ac_cv_lib_db_dbopen=no \
			ac_cv_func_dbopen=no
MAKE_ENV=		INCLUDES="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			ac_cv_header_fam_h=no ac_cv_lib_fam_FAMOpen=no

# do not pick up Berkeley DB in bdbobj
CONFIGURE_ENV+=		ac_cv_lib_db_dbopen=no \
			ac_cv_lib_db_db_open=no \
			ac_cv_lib_db_db_env_create=no \
			ac_cv_func_dbopen=no

CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}/courier \
			--with-etcdir=${SYSCONFDIR}/courier \
			--datadir=${PREFIX}/share/doc \
			--enable-static \
			--with-db=gdbm \
			--enable-maildrop-gid=_courier \
			--enable-maildrop-uid=_courier \
			--enable-syslog=1 \
			--enable-restrict-trusted=1 \
			--enable-keep-fromline=1 \
			--enable-use-flock=1 \
			--enable-use-dotlock=1 \
			--enable-authlib \
			--with-dirsync \
			--enable-maildirquota \
			--with-default-maildrop="./Maildir"

.if ${FLAVOR:Mpostfix}
CONFIGURE_ARGS+=	--enable-sendmail=/usr/local/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier _postfix"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier _postdrop"
# this sets the default version as postfix/stable if postfix is not
# already installed, but matches postfix-* so can still be installed
# alongside postfix/snapshot.
RUN_DEPENDS-main=	mail/postfix/stable
.else
CONFIGURE_ARGS+=	--enable-sendmail=/usr/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier"
.endif

.if ${FLAVOR:Mno_trashquota}
CONFIGURE_ARGS+=	--without-trashquota
.else
CONFIGURE_ARGS+=	--with-trashquota
.endif

LIB_DEPENDS=		devel/libidn \
			mail/courier-unicode>=2.1 \
			devel/pcre \

WANTLIB =		c courier-unicode iconv idn intl pcre>=1

WANTLIB-main=		${WANTLIB} gdbm m ${COMPILER_LIBCXX} pcre>=1 courierauth
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/gdbm \
			mail/courier-authlib

DOCFILES=		README \
			INSTALL \
			UPGRADE \
			README.postfix \
			maildroptips.txt \
			libs/maildir/README.sharedfolders.txt \
			libs/maildir/README.maildirquota.txt \
			libs/maildir/quotawarnmsg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/maildrop/
.endfor

.include <bsd.port.mk>
