# Static linking with OpenSSL 3.3
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64 && ${MACHINE_ARCH} != riscv64
USE_NOEXECONLY=		Yes
.endif

MODPY_EGG_VERSION =	2.0.0b14
PKGNAME =		borgbackup-${MODPY_EGG_VERSION:S/b/beta/}
EPOCH =			0

# OpenSSL used for EVP_aes_256_ocb. It is linked statically to avoid conflicting
# with shared libcrypto from the base OS pulled in via dependencies.
BUILD_DEPENDS =		security/openssl/3.3
RUN_DEPENDS =		databases/py-borgstore${MODPY_FLAVOR} \
			devel/py-borghash${MODPY_FLAVOR} \
			security/py-argon2-cffi${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR}

.include <bsd.port.mk>
