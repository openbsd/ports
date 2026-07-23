# Static linking with OpenSSL 3.5
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=		Yes
.endif

MODULES =		lang/python
MODPY_DISTV =		2.0.0b22
PKGNAME =		borgbackup-${MODPY_DISTV:S/b/beta/}
EPOCH =			0

# OpenSSL used for EVP_aes_256_ocb. It is linked statically to avoid conflicting
# with shared libcrypto from the base OS pulled in via dependencies.
BUILD_DEPENDS =		security/openssl/3.5
RUN_DEPENDS =		databases/py-borgstore>=0.5.5 \
			devel/py-borghash>=0.1.0 \
			devel/py-jsonargparse \
			security/py-argon2-cffi \
			security/py-blake3 \
			sysutils/py-platformdirs \
			sysutils/py-shtab \
			textproc/py-yaml

MAKE_ENV =		BORG_OPENSSL_NAME=eopenssl35

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/scripts/shell_completions/fish/borg.fish \
		${PREFIX}/share/fish/vendor_completions.d/

.include <bsd.port.mk>
