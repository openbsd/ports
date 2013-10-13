# $OpenBSD: Makefile,v 1.46 2013/10/13 20:18:08 naddy Exp $

COMMENT-main=		mail delivery agent with filtering abilities
COMMENT-utils=		quota tools for the Courier mail suite

V=			2.5.5
DISTNAME=		maildrop-$V
PKGNAME-main=		maildrop-${V}
FULLPKGNAME-utils=	courier-utils-$V
FULLPKGPATH-utils=	mail/maildrop,-utils
CATEGORIES=		mail

HOMEPAGE=		http://www.courier-mta.org/maildrop/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		postfix
FLAVOR?=

MULTI_PACKAGES=		-main -utils


# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
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

DOCFILES=		${WRKSRC}/README \
			${WRKSRC}/INSTALL \
			${WRKSRC}/UPGRADE \
			${WRKSRC}/README.postfix \
			${WRKSRC}/maildroptips.txt \
			${WRKSRC}/maildir/README.sharedfolders.txt \
			${WRKSRC}/maildir/README.maildirquota.txt \
			${WRKSRC}/maildir/quotawarnmsg


.if ${FLAVOR:Mpostfix}
CONFIGURE_ARGS+=	--enable-sendmail=/usr/local/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier _postfix"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier _postdrop"
RUN_DEPENDS=		mail/postfix/stable
.else
CONFIGURE_ARGS+=	--enable-sendmail=/usr/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier"
.endif

MODULES=		converters/libiconv \
			devel/gettext

LIB_DEPENDS=		devel/libidn

WANTLIB =		c idn

WANTLIB-main=		${WANTLIB} gdbm m stdc++ gdbm>=3 pcre>=1 courierauth
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/gdbm \
			devel/pcre \
			mail/courier-authlib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
	@for i in ${DOCFILES}; do \
	    if [ -f $$i ]; then \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/maildrop ;\
	    fi \
	done
	${INSTALL_DATA} ${WRKSRC}/unicode/README \
	    ${PREFIX}/share/doc/maildrop/README.unicode.txt
	@sed -e s#!!PREFIX!!#${TRUEPREFIX}#g ${FILESDIR}/SECURITY > \
		${WRKBUILD}/SECURITY
	${INSTALL_DATA} ${WRKBUILD}/SECURITY \
	    ${PREFIX}/share/doc/maildrop/

.include <bsd.port.mk>
